{# 
param: featured
#}
{%
    with m.rsc[id].media[1],
    m.rsc[id].summary|striptags,
    m.rsc[id].body|striptags|truncate:300
    as
    image_id,
    summary,
    excerpt
%}
    {% if featured %}
        <li class="media blog-media-featured">
            
            {% ifequal m.rsc[id].media[1].mime "text/html-video-embed" %}
                <section class="video-wrapper clearfix">
                    {% media m.rsc[id].media[1] %}
                </section>
            {% else %}
                <figure class="image-wrapper block-level-image">
                    <a href="{% url blog_article id=id slug=m.rsc[id].slug %}" title="{{ m.rsc[id].title }}">
                        {% media m.rsc[id].media[1] mediaclass="blog_summary_big" alt=m.rsc[id].title %}
                    </a>
                </figure>
            {% endifequal %}
        
            <h3 class="media-heading"><a href="{% url blog_article id=id slug=m.rsc[id].slug %}">{{ m.rsc[id].title }}</a></h3>
            <div class="media-body">
                <a class="blog-summary" href="{% url blog_article id=id slug=m.rsc[id].slug %}">
                    {{ summary|default:excerpt }}
                </a>
                {% include "blog/_article_meta.tpl" %}
            </div>
        </li>
    {% else %}
        <li class="media">
            {% if image_id %}
                <a class="pull-left" href="{% url blog_article id=id slug=m.rsc[id].slug %}">
                    {% image m.rsc[id].media[1] mediaclass="blog_summary" %}
                </a>
            {% endif %}
            <div class="media-body">
                <h3 class="media-heading"><a href="{% url blog_article id=id slug=m.rsc[id].slug %}">{{ m.rsc[id].title }}</a></h3>
                <a class="blog-summary" href="{% url blog_article id=id slug=m.rsc[id].slug %}">
                    {{ summary|default:excerpt }}
                </a>
                {% include "blog/_article_meta.tpl" %}
            </div>
        </li>
    {% endif %}
    
{% endwith %}
