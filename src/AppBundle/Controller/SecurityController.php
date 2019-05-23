<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class SecurityController extends Controller
{
    /**
     * @Route("/login")
     */
    public function loginAction()
    {
        return $this->render('AppBundle:Security:login.html.twig', array(
            // ...
        ));
    }
    /**
     * @Route("/loginCheck")
     */
    public function loginCheckAction()
    {
        return $this->render('AppBundle:Security:login_check.html.twig', array(
            // ...
        ));
    }

}
