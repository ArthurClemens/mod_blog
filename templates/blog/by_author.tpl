{% extends "blog/_base.tpl" %}

{% block title %}{% block blog_by_author_title %}{_ Archived articles by _} {{ m.rsc[q.id].title }}{% endblock %}{% endblock %}

{% block blog_base_page_title %}{% block blog_by_author_page_title %}
    <h1>{{ m.rsc[q.id].title }} <small>{_ articles _}</small></h1>
{% endblock %}{% endblock %}

{% block main %}{% block blog_by_author_main %}

	{% with m.search.paged[{query sort='-publication_start' cat='article' hasobject=[q.id] pagelen=m.config.site.pagelen.value}] as result %}

        <ul class="media-list">
            {% for id in result %}
                {% if id.is_published %}
                    {% include "blog/_article_summary.tpl" id=id %}
                {% endif %}
            {% endfor %}
        </ul>
        
		{% pager hide_single_page=1 result=result dispatch=zotonic_dispatch id=id slug=m.rsc[id].slug %}

	{% endwith %}

{% endblock %}{% endblock %}
