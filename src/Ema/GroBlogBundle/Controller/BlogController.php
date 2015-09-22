<?php

namespace Ema\GroBlogBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Ema\GroBlogBundle\Entity\Post;

class BlogController extends Controller
{
    public function indexAction()
    {

        $posts = $this->getLastTenPosts();
        return $this->render('EmaGroBlogBundle:Blog:index.html.twig',array('posts' => $posts));
    }

    public function createAction()
    {
        $this->createPost("tonton","tata","neuveu");

        return $this->render('EmaGroBlogBundle:Blog:index.html.twig');
    }

    public function detailAction($iddupost)
    {
        return $this->render('EmaGroBlogBundle:Blog:detail.html.twig',array('id' => $iddupost));
    }

    private function createPost($titre, $urlAlias, $content)
    {
        $post = new Post();
        $post->setTitre($titre);
        $post->setUrlAlias($urlAlias);
        $post->setContent($content);

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

}
