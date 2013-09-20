# Blog module for Zotonic

A Zotonic blog as separate module. In contrast to the default skeleton blog, this makes it easier to add a blog section to your current site.

Upon activation the module adds the blog at `yoursite.com/blog/`.

## Installation

Zotonic >= 0.7:

        zotonic installmodule mod_blog

Zotonic <= 0.6:

        git clone https://github.com/ArthurClemens/mod_bulk_commands.git mod_bulk_commands

Activate the module in System > Modules.


### Required steps

* Create a Text page named `blog_home`; this is used on the blog homepage (title and body text). Name the page in the advanced section on the edit page.
* Normally included in `basesite`:
      * a predicate named `subject` that points from `article` to `keyword` (or any other categorization).
      * a predicate named `author` that points from `article` to `person`.

### Optional steps

* For default styling, make sure that the base template includes Bootstrap CSS, for instance using the Bootstrap module.
* If you use the additional Comments module, JavaScript should be enabled in the browser.
* By default no comments are shown; activate the Comments module first.


### Dispatch rules

By default, only pages with `article` in the URL are displayed as blog articles. But ideally a page (with `page` in the URL) that has the category `article` is  displayed as a blog article as well.

To achieve this, check your dispatch rules. If possible you should remove `page` entries, so that `page.article.tpl` is correctly read to point to the blog article template.

#### Duplicate content

A site with multiple versions of the same content will be punished by Google. But if you enable the SEO Search Engine Optimization module, a "canonical" tag will be added to each page to point to the one "page" version. That way you don't have to worry that the same page can be accessed in 2 ways.


## Customizing

You are likely to make changes to the blog layout or contents. To safeguard future updates, create changes in your own site, not in this module.

* Create a directory `blog` in your site. Template files in this directory will override `mod_blog` templates.
* Create overriding templates in this directory. For instance, copy `base.tpl` and add or remove sections. Or create a custom `css/mod_blog.css`.

See a couple of simple customization examples below.

### Removing an element from a template

For example, to remove the sidebar:

* Copy the module's `templates/blog/base.tpl` to your own `blog` template directory.
* Remove the subnavbar block
* or change the contents to something else: `{% block subnavbar %} something else {% endblock %}`

### Using a different commenting system

For instance to use Disqus:

* Create a new template file `_article_comments.tpl` in your blog template directory.
* Grab Disqus embed code from http://disqus.com/admin/universalcode/
* Paste it in the template.

### Using different CSS

To add your own styles to `mod_blog.css`:

* Create your custom CSS file in your `lib/css/` directory.
* In your own `blog/base.tpl`, change block `html_head_extra`:

        {% block html_head_extra %}
            {% lib
                "css/mod_blog.css"
                "css/my_blog.css"
            %}
        {% endblock %}


To not use the blog CSS at all, remove the block `html_head_extra`.


## Differences with skeleton blog

Although this module derives code from the skeleton blog, many differences exist now. For example:

* Tempate files are named differently to better reflect base site.
* Most files are located in the `blog` directory for easier overriding.
* Template layout is adapted to better fit Bootstrap.
* Added `_comments.tpl` for easier overriding of the comment implementation.
* Added author view.
* Added checks for published state of articles and tags.
* Because of text changes, does currently no longer use a tranlations file.
