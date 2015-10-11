<?php

namespace Ema\GroBlogBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Ema\GroBlogBundle\Entity\Post;
use Ema\GroBlogBundle\Form\Type\PostType;
use Symfony\Component\HttpFoundation\Request;

class BlogController extends Controller
{


    public function indexAction()
    {
        $posts = $this->getLastTenPosts();
        return $this->render('EmaGroBlogBundle:Blog:index.html.twig',array('connected' => $this->isConnected(), 'posts' => $posts));
    }

    public function newAction(Request $request)
    {
        $status = "";

        $post = new Post();

        $form = $this->createForm(new PostType(), $post);

        if( $request->getMethod() == 'POST' )
        {
            $form->handleRequest($request);

            //Check if form is valid
            if($form->isValid())
            {
                $status = "success";
                $postToSave = $form->getData();
                $postToSave->setUrlAlias($this->slugify($postToSave->getTitre()));
                $this->savePost($postToSave);
            }
            else
            {
                $status = ($form->getErrors() == "") ? "Formulaire non valide" : $form->getErrors();
            }
        }

        return $this->render('EmaGroBlogBundle:Blog:new.html.twig', array(
            'form' => $form->createView(), 'connected' => $this->isConnected(), 'status' => $status
        ));
    }

    public function deleteAction($iddupost)
    {
        $this->deletePostById($iddupost);
        $status = "deleted";
        $posts = $this->getAllPosts();
        return $this->render('EmaGroBlogBundle:Blog:admin.html.twig',array('connected' => $this->isConnected(), 'status' => $status, 'posts' => $posts));

    }

    public function adminAction()
    {
        $status = "";
        $posts = $this->getAllPosts();
        return $this->render('EmaGroBlogBundle:Blog:admin.html.twig',array('connected' => $this->isConnected(), 'status' => $status, 'posts' => $posts));
    }

    public function editAction($iddupost,Request $request)
    {
        $status = "";

        $post = $this->getPostById($iddupost);

        $form = $this->createForm(new PostType(), $post);

        if( $request->getMethod() == 'POST' )
        {
            $form->handleRequest($request);

            //Check if form is valid
            if($form->isValid())
            {
                $status = "success";
                $postToSave = $form->getData();
                $postToSave->setUrlAlias($this->slugify($postToSave->getTitre()));
                $this->savePost($postToSave);
            }
            else
            {
                $status = ($form->getErrors() == "") ? "Formulaire non valide" : $form->getErrors();
            }
        }

        return $this->render('EmaGroBlogBundle:Blog:edit.html.twig', array(
            'form' => $form->createView(), 'connected' => $this->isConnected(), 'status' => $status
        ));
    }



    public function postAction($slug)
    {
        return $this->render('EmaGroBlogBundle:Blog:post.html.twig',array('connected' => $this->isConnected(), 'post' => $this->getFirstPostBySlugName($slug)));
    }

    private function savePost($post)
    {
        $em = $this->getDoctrine()->getManager();
        $em->persist($post);
        $em->flush();
    }

    private function getLastTenPosts()
    {
        $repository = $this->getDoctrine()->getRepository('EmaGroBlogBundle:Post');
        $posts = $repository->findBy(array(),array('id' => 'DESC'),10);
        return $posts;
    }

    private function getAllPosts()
    {
        $repository = $this->getDoctrine()->getRepository('EmaGroBlogBundle:Post');
        $posts = $repository->findAll();
        return $posts;
    }

    private function getFirstPostBySlugName($slug)
    {
        $repository = $this->getDoctrine()->getRepository('EmaGroBlogBundle:Post');
        return $repository->findBy(array('urlAlias' => $slug),array(),1)[0];
    }

    private function getPostById($id)
    {
        $repository = $this->getDoctrine()->getRepository('EmaGroBlogBundle:Post');
        $post = $repository->find($id);
        return $post;
    }

    private function deletePostById($id)
    {
        $em = $this->getDoctrine()->getManager();
        $em->remove($this->getPostById($id));
        $em->flush();
    }

    private function isConnected()
    {
        return !is_null($this->getUser());
    }

    public function slugify($text)
    {
        // replace non letter or digits by -
        $text = preg_replace('~[^\\pL\d]+~u', '-', $text);

        // trim
        $text = trim($text, '-');

        // transliterate
        $text = iconv('utf-8', 'us-ascii//TRANSLIT', $text);

        // lowercase
        $text = strtolower($text);

        // remove unwanted characters
        $text = preg_replace('~[^-\w]+~', '', $text);

        if (empty($text))
        {
            return 'n-a';
        }

        return $text;
    }
}
