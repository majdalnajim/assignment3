<?php
require_once "class.php";
require_once "InterfaceAuth.php";

class Instructor extends User implements Authentication
{
    public function __construct($username,$id)
    {
        parent::__construct($username,$id);
        $this->id = $id;
    }

    public function getRole()
    {
        return "Access Level: Can manage courses and grade students.";
    }

    public function login()
    {
        return "Instructor logged in successfully.";
    }

    public function logout()
    {
        return "Instructor logged out successfully.";
    }
}
?>