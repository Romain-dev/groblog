<?php

namespace Ema\GroBlogBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction($name)
    {
        return $this->render('EmaGroBlogBundle:Default:index.html.twig', array('name' => $name));
    }
}
