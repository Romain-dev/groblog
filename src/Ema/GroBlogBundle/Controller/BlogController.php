<?php

namespace Ema\GroBlogBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class BlogController extends Controller
{
    public function indexAction()
    {
        return $this->render('EmaGroBlogBundle:Blog:index.html.twig');
    }

    public function detailAction($iddupost)
    {
        return $this->render('EmaGroBlogBundle:Blog:detail.html.twig',array('id' => $iddupost));
    }

}
