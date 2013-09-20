{% extends "blog/base.tpl" %}

{% block title %}{_ Archive for _} {% if q.month %}{{ q.month }}, {% endif %}{{ q.year }}{% endblock %}

{% block chapeau %}
    <div class="span12">
    	<h1>{% if q.month %}{{ [q.year, q.month, 1]|date:"F" }}, {% endif %}{{ q.year }} <small>{_ articles _}</small></h1>
    </div>    
{% endblock %}


{% block content %}

	{% with m.search.paged[{query publication_year=q.year publication_month=q.month sort='-publication_start' cat=cat page=q.page pagelen=m.config.site.pagelen.value|default:10}] as result %}

        <ul class="media-list">
            {% for id in result %}
                {% if id.is_published %}
                    {% include "blog/_article_summary.tpl" id=id %}
                {% endif %}
            {% endfor %}
        </ul>
        
		{% pager hide_single_page=1 result=result dispatch=zotonic_dispatch year=q.year month=q.month %}

	{% endwith %}

{% endblock %}
