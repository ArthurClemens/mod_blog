{% extends "base.tpl" %}

{% block above %}
    <div class="page-title row">
        <div class="col-lg-12 col-md-12">
            {% block blog_title %}{% endblock %}
        </div>
    </div>
{% endblock %}

{% block subnavbar %}
    {% include "blog/_sidebar.tpl" %}
{% endblock %}

{% block html_head_extra %}
    {% lib
        "css/mod_blog.css"
    %}
{% endblock %}
