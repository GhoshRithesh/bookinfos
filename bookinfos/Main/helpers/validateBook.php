<?php


function validatePost($book)
{
    $errors = array();

    if (empty($book['title'])) {
        array_push($errors, 'Title is required');
    }

    if (empty($book['body'])) {
        array_push($errors, 'Body is required');
    }

    if (empty($book['topic_id'])) {
        array_push($errors, 'Please select a topic');
    }

    $existingPost = selectOne('posts', ['title' => $book['title']]);
    if ($existingPost) {
        if (isset($book['update-post']) && $existingPost['id'] != $book['id']) {
            array_push($errors, 'Post with that title already exists');
        }

        if (isset($book['add-post'])) {
            array_push($errors, 'Post with that title already exists');
        }
    }

    return $errors;
}