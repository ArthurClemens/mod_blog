{% extends "blog/base.tpl" %}

{% block title %}{_ Articles by _} "{{ m.rsc[q.id].author }}"{% endblock %}

{% block chapeau %}
    <div class="span12">
    	<h1>{{ m.rsc[q.id].title }} <small>{_ articles _}</small></h1>
    </div>    
{% endblock %}

{% block content %}

	{% with m.search.paged[{query sort='-publication_start' cat='article' hasobject=q.id pagelen=m.config.site.pagelen.value}] as result %}

        <ul class="media-list">
            {% for id in result %}
                {% if id.is_published %}
                    {% include "blog/_article_summary.tpl" id=id %}
                {% endif %}
            {% endfor %}
        </ul>
        
		{% pager hide_single_page=1 result=result dispatch=zotonic_dispatch id=id slug=m.rsc[id].slug %}

	{% endwith %}

{% endblock %}

{% block sidebar %}
	{% include "blog/_sidebar.tpl" %}
{% endblock %}
