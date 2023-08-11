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
            ->add('name', TextareaType::class, [
                'attr' => ['class' => 'form-control formName']
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
                'label' => 'Description'
            ]);

         $builder
            ->add('image')
            ->add('capacity')
            ->add('email')
            ->add('phoneNumber')
            ->add('address')
            ->add('url')
            ->add('type')
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Events::class,
        ]);
    }
}
