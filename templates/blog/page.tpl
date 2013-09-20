{% extends "blog/base.tpl" %}

{% block title %}{{ m.rsc[id].title }}{% endblock %}

{% block chapeau %}
	<header class="span12">
        <h1>{{ m.rsc[id].title }}</h1>
    </header>
{% endblock %}


{% block content %}

    
	{% if m.rsc[id].summary %}
	<p class="summary">
		{{ m.rsc[id].summary }}
	</p>
	{% endif %}

	{% block below_summary %}
		{% if m.rsc[id].depiction %}
			<figure class="image-wrapper block-level-image">
				{% media m.rsc[id].depiction width=445 crop class=align alt=m.rsc[id].title %}
			</figure>
		{% endif %}
	{% endblock %}

	{{ m.rsc[id].body|show_media }}

	{% include "_blocks.tpl" %}

	{% block below_body %}{% endblock %}

{% with m.search.paged[{query hassubject=[id, 'haspart']  sort='seq' pagelen=1 page=q.page}] as result %}
{% for id in result %}

{{ m.rsc[id].title }}

{% endfor %}
{% pager hide_single_page=1 result=result dispatch='page' id=id %}

{% endwith %}

{% endblock %}
