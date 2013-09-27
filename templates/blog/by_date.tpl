{% extends "blog/_base.tpl" %}

{% block title %}{% block blog_by_date_title %}{_ Articles from _} {% if q.month %}{{ q.month }}, {% endif %}{{ q.year }}{% endblock %}{% endblock %}

{% block blog_base_page_title %}{% block blog_by_date_page_title %}
    <h1>{% if q.month %}{{ [q.year, q.month, 1]|date:"F" }}, {% endif %}{{ q.year }} <small>{_ articles _}</small></h1>
{% endblock %}{% endblock %}


{% block main %}{% block blog_by_date_main %}

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

{% endblock %}{% endblock %}
