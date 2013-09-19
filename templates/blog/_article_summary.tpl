{# 
param big: first item in the loop - not used yet
#}
{%
    with m.rsc[id].media[1],
    m.rsc[id].summary|default:m.rsc[id].body|striptags|truncate:300
    as
    image_id,
    excerpt
%}

    <li class="media">
        <h3><a href="{% url blog_article id=id slug=m.rsc[id].slug %}">{{ m.rsc[id].title }}</a></h3>
        {% include "blog/_article_meta.tpl" %}
        {% if image_id %}
            <a class="pull-left" href="{% url blog_article id=id slug=m.rsc[id].slug %}">
                {% image m.rsc[id].media[1] width=170 height=113 crop %}
            </a>
        {% endif %}
        <div class="media-body">
            
            <p>
                {{ excerpt }} <a href="{% url blog_article id=id slug=m.rsc[id].slug %}">{_ Read more _}&nbsp;&raquo;</a>
            </p>
        </div>
    </li>

{% endwith %}
