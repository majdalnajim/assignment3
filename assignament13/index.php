<?php
require_once "Student.php";
require_once "Instructor.php";

$user1 =new Student("Ali","1");
   echo $user1->displayUserInfo() . "<br>";
    echo $user1->getRole() . "<br>";
    echo $user1->login() . "<br>";
    echo $user1->logout() . "<br>";

    echo "<hr>";

$user2= new Instructor("DrAhmed","2");
    echo $user2->displayUserInfo() . "<br>";
    echo $user2->getRole() . "<br>";
    echo $user2->login() . "<br>";
    echo $user2->logout() . "<br>";
    


?>