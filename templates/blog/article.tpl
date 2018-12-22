{% extends "blog/base.tpl" %}

{% block blog_title %}
    {% include "blog/_article_meta.tpl" id=id %}
    <h1>{{ m.rsc[id].title }}</h1>
{% endblock %}

{% block main %}
    <article class="blog-article">
        {% block summary %}
            <section id="summary">{{ m.rsc[id].summary }}</section>
    	{% endblock %}

        {% block depiction %}
            {% include "_page_depiction.tpl" %}
        {% endblock %}

        {% block below_summary %}
            <section id="below_summary">{{ m.rsc[id].body | show_media }}</section>
    	{% endblock %}
    </article>
    
	{% include "_blocks.tpl" %}

        {% block below_body %}
        {% endblock %}

        {% block seealso %}
        {% include "_content_list.tpl" list=id.o.haspart in_collection=id is_large %}
        {% include "_content_list.tpl" list=id.o.relation is_large %}
        {% endblock %}

        {% block thumbnails %}
            {% include "_page_thumbnails.tpl" %}
        {% endblock %}

        {% block comments %}
	    <section id="comments">{% include "blog/_article_comments.tpl" id=id %}</section>
	{% endblock %}
	
	{% include "blog/_article_prevnext.tpl" id=id %}

{% endblock %}

{% block subnavbar %}
	{% include "blog/_article_sidebar.tpl" %}
{% endblock %}
