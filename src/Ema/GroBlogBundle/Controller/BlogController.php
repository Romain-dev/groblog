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
        //Recuperation des 10 derniers posts
        $posts = $this->getLastTenPosts();
        return $this->render('EmaGroBlogBundle:Blog:index.html.twig',array('connected' => $this->isConnected(), 'posts' => $posts));
    }

    public function postAction($slug)
    {
        return $this->render('EmaGroBlogBundle:Blog:post.html.twig',array('connected' => $this->isConnected(), 'post' => $this->getFirstPostBySlugName($slug)));
    }

    //Determine si l'utilisateur est connectes avec FOS
    private function isConnected()
    {
        return !is_null($this->getUser());
    }

    //Permet de recupérer les 10 derniers posts crees
    private function getLastTenPosts()
    {
        $repository = $this->getDoctrine()->getRepository('EmaGroBlogBundle:Post');
        //Max 10 occurences
        $posts = $repository->findBy(array(),array('id' => 'DESC'),10);
        return $posts;
    }

    //Recherche d'un post dans la base de donnees dont urlAlias est egal à $slug
    private function getFirstPostBySlugName($slug)
    {
        $repository = $this->getDoctrine()->getRepository('EmaGroBlogBundle:Post');
        return $repository->findBy(array('urlAlias' => $slug),array(),1)[0];
    }
}
