<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Response;

class adminController extends Controller{
    /**
     * @Route("/admin")
     */

     public function showAction(){
         return new Response("Welcome to the admin area");
     }
}
