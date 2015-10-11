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

    public function postAction($slug)
    {
        return $this->render('EmaGroBlogBundle:Blog:post.html.twig',array('connected' => $this->isConnected(), 'post' => $this->getFirstPostBySlugName($slug)));
    }

    private function isConnected()
    {
        return !is_null($this->getUser());
    }

    private function getLastTenPosts()
    {
        $repository = $this->getDoctrine()->getRepository('EmaGroBlogBundle:Post');
        $posts = $repository->findBy(array(),array('id' => 'DESC'),10);
        return $posts;
    }

    private function getFirstPostBySlugName($slug)
    {
        $repository = $this->getDoctrine()->getRepository('EmaGroBlogBundle:Post');
        return $repository->findBy(array('urlAlias' => $slug),array(),1)[0];
    }
}
