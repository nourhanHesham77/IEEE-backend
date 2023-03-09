<?php

$name = "elzero";
$$name = "Web";

echo $$name;
echo "<br>";
echo $elzero; //as $$is a refrence ...=$($name) =$elzero
echo "<br>";
echo ${"elzero"}; 
echo "<br>";
echo "$elzero"; //note: won't work for single' >> will work as string
echo "<br>";
echo ${$name};
echo "<br>";
echo "${$name}";


