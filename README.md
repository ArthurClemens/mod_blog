# Blog module for Zotonic

This is Zotonic's skeleton blog site as separate module.

When activated the module adds the blog at `yoursite.com/blog`.

## Installation

1. Download or `git clone` this module into your Modules directory.
1. Activate the module in System > Modules.

By default no comments are shown; activate the Comments module first.

## Requirements

* The blog homepage is a Text page named `page_blog`; you need to create that page. The title and body text are shown on the blog homepage.
* Make sure you have a predicate with name `subject` that points from Article to Keyword or Tag (or any categorization).
* Make sure you have a predicate with name `author` that points from Article to Person.
* If you use the additional Comments module, JavaScript should be enabled in the browser.

## Customizing

Create overriding templates in your `templates/blog/` directory. For instance, copy `base.tpl` and add or remove sections. Or change the skeleton CSS `z-blog.css`, or create a custom `css/blog.css`.

## Differences with skeleton blog

* Changed dispatch rules with a "blog namespace"
* Changed templates to better fit a Bootstrap-based blog
* Added `_comments.tpl` for easier overriding of the comment implementation
* Added checks for published state



