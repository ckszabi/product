<?php


$mapping = array(
    'Email' => __DIR__ . '/Email.php'
);

spl_autoload_register(function ($class) use ($mapping) {
    if (isset($mapping[$class])) {
        require $mapping[$class];
    }
}, true);
 