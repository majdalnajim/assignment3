<?php
 class Car{
     public $brand;
     public $color;

     public function __construct($brand,$color){
    $this->brand=$brand;
    $this->color=$color;
     }

     public function __destruct(){
        echo "Destroying car : $this->brand $this->color<br>";
     }

    // public function getB():string{
    //     return $this->brand;
    // }
    // public function getC():string{
    //      return $this->color;

    // }
    // public function setB($brand):void{
    //      $this->brand=$brand;
    // }
    // public function setC($color):void{
    //       $this->color=$color;

    // }

    public function display(){
        echo "<p> your car is : $this->brand and colors is:$this->color </p> ";
    }
 }

$car1=new car("bmw","blue");
$car2=new car("bmw","red");

// $car->color='red';
// $car->brand='bmw';
$car1->display();
$car2->display();

?>