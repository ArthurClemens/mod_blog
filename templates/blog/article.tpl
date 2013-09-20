{% extends "blog/base.tpl" %}

{% block blog_title %}
    {% include "blog/_article_meta.tpl" id=id %}
    <h1>{{ m.rsc[id].title }}</h1>
{% endblock %}

{% block main %}

    <article class="blog-article">
        {% block below_summary %}
    	    {{ m.rsc[id].body|show_media }}
    	{% endblock %}
    </article>
    
	{% include "_blocks.tpl" %}

    {% block comments %}
	    <section id="comments">{% include "blog/_article_comments.tpl" id=id %}</section>
	{% endblock %}
	
	{% include "blog/_article_prevnext.tpl" id=id %}

{% endblock %}

{% block subnavbar %}
	{% include "blog/_article_sidebar.tpl" %}
{% endblock %}
