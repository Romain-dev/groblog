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

        //Creation du form avec le classform
        $form = $this->createForm(new PostType(), $post);

        //Si le formulaire a ete envoye
        if( $request->getMethod() == 'POST' )
        {
            $form->handleRequest($request);

            //Le form est il valide
            if($form->isValid())
            {
                $status = "success";
                $postToSave = $form->getData();
                //Creation de la slug
                $postToSave->setUrlAlias($this->slugify($postToSave->getTitre()));
                //Enregistrement
                $this->savePost($postToSave);
            }
            else
            {
                //Affichages des erreurs du validateur
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
                //Creation de la slug
                $postToSave->setUrlAlias($this->slugify($postToSave->getTitre()));
                //Sauvegarde
                $this->savePost($postToSave);
            }
            else
            {
                //Affichage des erreur du validateur
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
        //Recuperation des posts pour la vue admin
        $posts = $this->getAllPosts();
        return $this->render('EmaGroBlogBundle:Crud:admin.html.twig',array('connected' => $this->isConnected(), 'status' => $status, 'posts' => $posts));
    }

    //Enregistre le post dans la BDD
    private function savePost($post)
    {
        $em = $this->getDoctrine()->getManager();
        $em->persist($post);
        $em->flush();
    }

    //Permet de recuperer tous les posts
    private function getAllPosts()
    {
        $repository = $this->getDoctrine()->getRepository('EmaGroBlogBundle:Post');
        $posts = $repository->findAll();
        return $posts;
    }

    //Selection d'un post par id
    private function getPostById($id)
    {
        $repository = $this->getDoctrine()->getRepository('EmaGroBlogBundle:Post');
        $post = $repository->find($id);
        return $post;
    }

    //Suppression d'un post par son id
    private function deletePostById($id)
    {
        $em = $this->getDoctrine()->getManager();
        $em->remove($this->getPostById($id));
        $em->flush();
    }

    //Verifie si un utilisateur est connecte avec FOS
    private function isConnected()
    {
        return !is_null($this->getUser());
    }

    //Transforme une string en string "slug compliant"
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