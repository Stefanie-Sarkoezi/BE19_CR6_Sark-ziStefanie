<?php

namespace App\Form;

use App\Entity\Events;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class EventsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name', TextType::class, [
                'attr' => ['class' => 'form-control formName'],
                'label' => 'Event Name:'
            ]);

        $builder
            ->add('dateNTime', DateTimeType::class, [ 
                'attr' => ['class' => 'form-control formDate'], 
                'widget' => 'single_text',
                'days' => range(1,31),
                'placeholder' => [
                    'year' => 'Year', 'month' => 'Month', 'day' => 'Day',
                    'hour' => 'Hour', 'minute' => 'Minute', 'second' => 'Second',
                ],
                'date_label' => 'Date/Time:'
            ]);

        $builder
            ->add('description', TextareaType::class, [
                'attr' => ['class' => 'form-control formDescription'],
                'label' => 'Description:'
            ]);

         $builder
            ->add('image', TextType::class, [
                'attr' => ['class' => 'formImage form-control'],
                'label' => 'Image:'    
            ]);

         $builder
            ->add('capacity', IntegerType::class, [
                'attr' => ['class' => 'formCapacity form-control'],
                'label' => 'Capacity:' 
            ]);

        $builder   
            ->add('email', EmailType::class, [
                'attr' => ['class' => 'formMail form-control'],
                'label' => 'Email:',
                'placeholder' => 'example@gmail.com'
            ]);

        $builder
            ->add('phoneNumber', TelType::class, [
                'attr' => ['class' => 'formPhone form-control'],
                'label' => 'Phone Number:',
            ]);

        $builder
            ->add('address', TextType::class, [
                'attr' => ['class' => 'formAddress form-control'],
                'label' => 'Address:'
            ]);

        $builder
            ->add('url', UrlType::class, [
                'attr' => ['class' => 'formUrl form-control'],
                'label' => 'Event Url:',
                'placeholder' => 'www.event-page.com'
            ]);

        $builder
            ->add('type', ChoiceType::class , [ 
                'attr' => ['class' => 'form-control mt-2 formType'],
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
