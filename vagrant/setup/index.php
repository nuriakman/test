<?php

    $dirs = array_filter(glob('*'), 'is_dir');

    $i = 1;

    echo '<h1>Home Folder</h1>';

    foreach ($dirs as $value) {
        echo "&nbsp; <a href = '$value' target = '_blank'>$value</a><br><br>";
        $i++;
    }

