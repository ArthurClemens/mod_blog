{% extends "blog/_base.tpl" %}

{% block blog_base_page_title %}
    <div class="hero-unit">
        <h1>{{ m.rsc[id].title }}</h1>
        {{ m.rsc[id].body }}
    </div>
{% endblock %}

{% block main %}{% block blog_home_main %}

    {% with m.search[{query cat='article' sort='-publication_start' pagelen=m.config.site.pagelen.value|default:5}] as result %}

        <ul class="media-list" id="list-articles">
            {% for id in result %}
                {% if id.is_published %}
                    {% include "blog/_article_summary.tpl" id=id featured=id.is_featured %}
                {% endif %}
            {% endfor %}
        </ul>

        {% ifequal m.config.site.pagelen.value|default:5 result|length %}
            {% wire id="more-results" action={moreresults result=result target="list-articles" template="blog/_article_summary.tpl"} %}
            <p><a href="#" id="more-results">{_ Previous articles _}</a></p>
        {% endifequal %}
        
    {% endwith %}
    
{% endblock %}{% endblock %}