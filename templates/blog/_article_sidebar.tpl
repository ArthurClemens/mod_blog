{% include "blog/_article_keywords.tpl" %}

{% with m.rsc[id].media|without_embedded_media:id as media %}
    {% if media %}
        <div class="blog-sidebar hidden-print">
            <ul class="nav blog-media">
                {% for medium in media %}
                    <li>
                        <a href="{% url blog_page id=medium.id %}">
                            {% include "blog/_body_media.tpl" width=223 align="block" id=medium %}
                        </a>
                    </li>
                {% endfor %}
            </ul>
        </div>
    {% endif %}
{% endwith %}

{% include "blog/_sidebar.tpl" %}
