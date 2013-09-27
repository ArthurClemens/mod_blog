{% extends "blog/_base.tpl" %}

{% block blog_base_page_title %}
    {% include "blog/_article_meta.tpl" id=id %}
    <h1>{{ m.rsc[id].title }}</h1>
{% endblock %}

{% block main %}{% block blog_article_main %}

    <article class="blog-article">
        {% block blog_article_below_summary %}
    	    {{ m.rsc[id].body|show_media }}
    	{% endblock %}
    </article>
    
	{% include "_blocks.tpl" %}

    {% block blog_article_comments %}
	    <section id="comments">{% include "blog/_article_comments.tpl" id=id %}</section>
	{% endblock %}
	
	{% include "blog/_article_prevnext.tpl" id=id %}

{% endblock %}{% endblock %}

{% block subnavbar %}{% block blog_article_subnavbar %}
	{% include "blog/_article_sidebar.tpl" %}
{% endblock %}{% endblock %}
