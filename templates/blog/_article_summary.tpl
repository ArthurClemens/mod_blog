{# 
param big: first item in the loop
#}
{%
    with m.rsc[id].media[1],
    m.rsc[id].summary|default:m.rsc[id].body|striptags|truncate:300
    as
    image_id,
    excerpt
%}
    {% if big %}
        <li class="media">
            
            {% ifequal m.rsc[id].media[1].mime "text/html-video-embed" %}
                <section class="video-wrapper clearfix">
                    {% media m.rsc[id].media[1] %}
                </section>
            {% else %}
                <figure class="image-wrapper block-level-image clearfix">
                    <a href="{{m.rsc[id].page_url }}" title="{{ m.rsc[id].title }}">
                        {% media m.rsc[id].media[1] mediaclass="blog_summary_big" alt=m.rsc[id].title %}
                    </a>
                </figure>
            {% endifequal %}
        
            <h3><a href="{% url blog_article id=id slug=m.rsc[id].slug %}">{{ m.rsc[id].title }}</a></h3>
            {% include "blog/_article_meta.tpl" %}
            <div class="media-body">
                <p>
                    {{ excerpt }} <a href="{% url blog_article id=id slug=m.rsc[id].slug %}">{_ Read more _}&nbsp;&raquo;</a>
                </p>
            </div>
        </li>
    {% else %}
        <li class="media">
            <h3><a href="{% url blog_article id=id slug=m.rsc[id].slug %}">{{ m.rsc[id].title }}</a></h3>
            {% include "blog/_article_meta.tpl" %}
            {% if image_id %}
                <a class="pull-left" href="{% url blog_article id=id slug=m.rsc[id].slug %}">
                    {% image m.rsc[id].media[1] mediaclass="blog_summary" %}
                </a>
            {% endif %}
            <div class="media-body">
            
                <p>
                    {{ excerpt }} <a href="{% url blog_article id=id slug=m.rsc[id].slug %}">{_ Read more _}&nbsp;&raquo;</a>
                </p>
            </div>
        </li>
    {% endif %}
    
{% endwith %}
