<?php

echo (int)15.2 + (int)14.7 + (10.5 + 10.5); // 50
echo '<br>'; 
echo gettype((int)15.2 + (int)14.7 + (int) (10.5 + 10.5)); // Integer

//other
echo '<br>'; 
echo gettype((int)(15.2 + 14.7 + (10.5 + 10.5)));

//other
echo '<br>'; 
echo (int)15.2 + (int)14.7 + (10.5 + 10.5) ."<br>" . gettype((int)(15.2 + 14.7 + (10.5 + 10.5)));