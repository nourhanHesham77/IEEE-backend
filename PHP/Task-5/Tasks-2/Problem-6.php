<?php
//using heredoc
$something = "Programming";

echo <<<"code"
Hello \PHP\
We Love $something
code;

//other
echo "<br>";
echo <<<code
Hello \PHP\
We Love $something
code;

// [1] Fix The Error >> spaces pre code
// [2] Remove 2 Characters To Get The Output

// Needed Output
// Hello \PHP\ We Love Programming