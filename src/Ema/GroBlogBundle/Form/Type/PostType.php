<?php

/**
 * Created by PhpStorm.
 * User: spike
 * Date: 29/09/15
 * Time: 14:49
 */
namespace Ema\GroBlogBundle\Form\Type;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;

class PostType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('titre', 'text', array('attr' => array('style' => 'display:block;', 'class' => 'input-lg')))
            ->add('urlAlias', 'text', array('attr' => array('style' => 'display:block;', 'class' => 'input-lg')))
            ->add('content', 'textarea', array('attr' => array('style' => 'display:block;', 'class' => 'input-lg')))
            ->add('create', 'submit', array('label' => 'Créer'));
    }

    public function getName()
    {
        return 'post';
    }
}