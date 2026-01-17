<?php
abstract class User
{
    private $username;
    protected $id;

    public function __construct($username,$id)
    {
        $this->username = $username;
        $this->id = $id;
    }

    public function displayUserInfo()
    {
        return "Username: {$this->username}, id: {$this->id}";
    }

    abstract public function getRole();
}





?>