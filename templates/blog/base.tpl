{% extends "blog/site_base.tpl" %}

{% block html_head_extra %}
    {% lib
        "css/bootstrap.min.css"
        "css/mod_blog.css"
    %}
{% endblock %}

{% block content_area %}
    {% block chapeau %}{% endblock %}

    <div class="col-md-9">
        {% block content %}
            <!-- The default content goes here. -->
        {% endblock %}
    </div>

    <div id="sidebar" class="col-md-3">
        {% block sidebar %}
            {% include "blog/_sidebar.tpl" %}
        {% endblock %}
    </div>

{% endblock %}

{% block _js_include_extra %}
    {% lib
        "js/bootstrap.min.js"
    %}
{% endblock %}