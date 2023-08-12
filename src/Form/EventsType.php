<?php

namespace App\Form;

use App\Entity\Events;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class EventsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name', null, [
                'attr' => ['class' => 'form-control formName my-3'],
                'label' => 'Event Name:'
            ])
            ->add('dateNTime', null, [ 
                'attr' => ['class' => 'form-control formDate my-3'], 
                'widget' => 'single_text',
                'days' => range(1,31),
                'placeholder' => [
                    'year' => 'Year', 'month' => 'Month', 'day' => 'Day',
                    'hour' => 'Hour', 'minute' => 'Minute', 'second' => 'Second',
                ],
                'label' => 'Date/Time:'
            ])
            ->add('description', null, [
                'attr' => ['class' => 'form-control formDescription my-3'],
                'label' => 'Description:'
            ])
            ->add('image', null, [
                'attr' => ['class' => 'formImage form-control my-3'],
                'label' => 'Image:'    
            ])
            ->add('capacity', null, [
                'attr' => ['class' => 'formCapacity form-control my-3'],
                'label' => 'Capacity:' 
            ])   
            ->add('email', null, [
                'attr' => ['class' => 'formMail form-control my-3'],
                'label' => 'Email:',
    
            ])
            ->add('phoneNumber', null, [
                'attr' => ['class' => 'formPhone form-control my-3'],
                'label' => 'Phone Number:',
            ])
            ->add('address', null, [
                'attr' => ['class' => 'formAddress form-control my-3'],
                'label' => 'Address:'
            ])
            ->add('url', null, [
                'attr' => ['class' => 'formUrl form-control my-3'],
                'label' => 'Event Url:',
               
            ])
            ->add('type', ChoiceType::class , [ 
                'attr' => ['class' => 'form-control my-3 formType'],
                'label' => 'Event Type:',
                'choices'  => [ 
                    'Music' => 'Music',
                    'Sport' => 'Sport',
                    'Movie' => 'Movie',
                    'Theater' => 'Theater',
                ]
                ]);
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Events::class,
        ]);
    }
}
