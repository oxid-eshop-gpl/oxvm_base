<?php

$config = include __DIR__ . DIRECTORY_SEPARATOR . "config.default.php";

/** Enable profiler fore all requests */
$config['profiler.enable'] = static function () {
    return true;
};
return $config;