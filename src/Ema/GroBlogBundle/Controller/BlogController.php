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
        return $this->render('EmaGroBlogBundle:Blog:index.html.twig',array('posts' => $posts));
    }

    public function newAction(Request $request)
    {
        $status = "";

        $post = new Post();

        $form = $this->createForm(new PostType(), $post);

        if( $request->getMethod() == 'POST' )
        {
            $form->handleRequest($request);
            $this->savePost($form->getData());
            $status = "success";
        }

        return $this->render('EmaGroBlogBundle:Blog:new.html.twig', array(
            'form' => $form->createView(), 'status' => $status
        ));
    }

    public function deleteAction()
    {
    }

    public function editAction()
    {
    }



    public function postAction($iddupost)
    {
        return $this->render('EmaGroBlogBundle:Blog:detail.html.twig',array('post' => $this->getPostById($iddupost)));
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

    private function getPostById($id)
    {
        $repository = $this->getDoctrine()->getRepository('EmaGroBlogBundle:Post');
        $post = $repository->find($id);
        return $post;
    }



}
