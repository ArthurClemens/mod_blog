{% extends "blog/base.tpl" %}

{% block title %}{_ Articles for _} "{{ m.rsc[q.id].title }}"{% endblock %}

{% block chapeau %}
    <div class="col-md-12">
    	<h1>{{ m.rsc[q.id].title }} <small>{_ category archives _}</small></h1>
    </div>    
{% endblock %}

{% block content %}

	{% with m.search.paged[{referrers id=q.id page=q.page pagelen=m.config.site.pagelen.value|default:10}] as result %}

        <ul class="media-list">
            {% for id, predicate in result %}
                {% if id.is_published %}
                    {% include "blog/_article_summary.tpl" id=id %}
                {% endif %}
            {% endfor %}
        </ul>
        
		{% pager result=result dispatch='keyword' id=id slug=m.rsc[id].slug %}

	{% endwith %}

{% endblock %}

{% block sidebar %}
	{% include "blog/_sidebar.tpl" show_cloud=1 %}
{% endblock %}
