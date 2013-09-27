{% extends "base.tpl" %}

{% block above %}{% block blog_base_above %}
    <div class="page-title row-fluid">
        <div class="span12">
            {% block blog_base_page_title %}{% endblock %}
        </div>
    </div>
{% endblock %}{% endblock %}

{% block subnavbar %}{% block blog_base_subnavbar %}
    {% include "blog/_sidebar.tpl" %}
{% endblock %}{% endblock %}

{% block html_head_extra %}{% block blog_base_html_head_extra %}
    {% lib
        "css/mod_blog.css"
    %}
{% endblock %}{% endblock %}