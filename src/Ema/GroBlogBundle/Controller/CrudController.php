<?php

namespace Ema\GroBlogBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Ema\GroBlogBundle\Entity\Post;
use Ema\GroBlogBundle\Form\Type\PostType;
use Symfony\Component\HttpFoundation\Request;

class CrudController extends Controller
{
    public function adminAction()
    {
        $status = "";
        $posts = $this->getAllPosts();
        return $this->render('EmaGroBlogBundle:Crud:admin.html.twig',array('connected' => $this->isConnected(), 'status' => $status, 'posts' => $posts));
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

        return $this->render('EmaGroBlogBundle:Crud:new.html.twig', array(
            'form' => $form->createView(), 'connected' => $this->isConnected(), 'status' => $status
        ));
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

        return $this->render('EmaGroBlogBundle:Crud:edit.html.twig', array(
            'form' => $form->createView(), 'connected' => $this->isConnected(), 'status' => $status
        ));
    }

    public function deleteAction($iddupost)
    {
        $this->deletePostById($iddupost);
        $status = "deleted";
        $posts = $this->getAllPosts();
        return $this->render('EmaGroBlogBundle:Crud:admin.html.twig',array('connected' => $this->isConnected(), 'status' => $status, 'posts' => $posts));
    }

    private function savePost($post)
    {
        $em = $this->getDoctrine()->getManager();
        $em->persist($post);
        $em->flush();
    }

    private function getAllPosts()
    {
        $repository = $this->getDoctrine()->getRepository('EmaGroBlogBundle:Post');
        $posts = $repository->findAll();
        return $posts;
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
