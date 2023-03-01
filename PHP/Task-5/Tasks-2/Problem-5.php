<?php
//nl2br instead of br & Nowdoc instead of backslashes

echo nl2br(<<<'Now'
Hello "'Elzero'"
We Love $Programming$
Languages Specially "PHP"
Now);

// Needed Output
// Hello "'Elzero'"
// We Love $Programming$
// Languages Specially "PHP"