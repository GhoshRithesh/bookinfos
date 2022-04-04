<?php

function validateTopic($topic)
{
    $errors = array();

    if (empty($topic['name'])) {
        array_push($errors, 'Name is required');
    }

    $existingTopic = selectOne('topics', ['name' => $book['name']]);
    if ($existingTopic) {
        if (isset($book['update-topic']) && $existingTopic['id'] != $book['id']) {
            array_push($errors, 'Name already exists');
        }

        if (isset($book['add-topic'])) {
            array_push($errors, 'Name already exists');
        }
    }

    return $errors;
}
