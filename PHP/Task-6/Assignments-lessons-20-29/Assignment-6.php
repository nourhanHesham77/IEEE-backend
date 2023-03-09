<?php

$a = "Elzero";
$b = "Web";
$c = "School";

// Method One
$d = $a ." ".$b." ".$c;


// Method Two
$d = "{$a} {$b} {$c}";

// Method Three
$d = "$a $b $c";

// Method Four
$arr_products=array($a,$b,$c);
$d = implode(" ",$arr_products);

// $d = "${a} ${b} ${c}"; same as method Two

//another solution Concatenate string using printf() function as in c..
// printf("%s %s %s",$a,$b,$c);

echo $d; // Elzero Web School