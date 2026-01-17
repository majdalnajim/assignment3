<?php
require_once "class.php";
require_once "InterfaceAuth.php";

class Student extends User implements Authentication
{
    public function __construct($username,$id)
    {
        parent::__construct($username,$id);
        $this->id = $id;
    }

    public function getRole()
    {
        return "Access Level: Can view courses and submit assignments.";
    }

    public function login()
    {
        return "Student logged in successfully.";
    }

    public function logout()
    {
        return "Student logged out successfully.";
    }
}
?>