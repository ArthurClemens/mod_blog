{% extends "blog/base.tpl" %}

{% block title %}{{ m.rsc[id].title }}{% endblock %}

{% block mod_seo_shorturl %}{% endblock %}
{% block mod_seo_canonical %}{% endblock %}

{% block chapeau %}
	<div class="span12">
    	<h1>{{ m.rsc[id].title }}</h1>
    	{% include "blog/_article_meta.tpl" id=id %}
    </div>
{% endblock %}

{% block content %}

{#
No summary on the detail page

	{% if m.rsc[id].summary %}
	<p class="summary">
		{{ m.rsc[id].summary }}
	</p>
	{% endif %}
#}

    <article class="blog-article">
        {% block below_summary %}
    	    {{ m.rsc[id].body|show_media }}
    	{% endblock %}
    </article>
    
	{% include "_blocks.tpl" %}

	<section id="comments">{% include "blog/_comments.tpl" id=id %}</section>
	{% include "blog/_article_prevnext.tpl" id=id %}

{% endblock %}

{% block sidebar %}
	{% include "blog/_article_sidebar.tpl" %}
{% endblock %}
