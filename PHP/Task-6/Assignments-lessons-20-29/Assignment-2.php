<?php

$a = "10";
//1
echo +$a;
echo "<br>";
echo gettype(+$a);

echo "<br>";
echo "<br>";
//2
echo intval($a);
echo "<br>";
echo gettype(intval($a));

echo "<br>";
echo "<br>";
//3
echo (int)$a;
echo "<br>";
echo gettype((int)$a);

echo "<br>";
echo "<br>";
//4
echo $a+0;
echo "<br>";
echo gettype($a+0);

echo "<br>";
echo "<br>";
//5
//same as num 4
echo $a*1;
echo "<br>";
echo gettype($a);


echo "<br>";
echo "<br>";
//6
//after settype $a is int..(The variable being converted)
settype($a , "integer");
echo $a;
echo "<br>";
echo gettype($a);

