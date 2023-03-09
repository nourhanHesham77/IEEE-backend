<?php

// Code 1
$a = @$b or die("Oops! not found");

// Code 2
$f = @file("Not_A_File") or die("file doesn't exist!");

// Code 3
(@include("Not_A_File")) or die("No such a file");