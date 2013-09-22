{% with m.rsc[id].media|without_embedded_media:id as media %}
    {% if media %}
        <div class="blog-sidebar hidden-print">
            <ul class="nav blog-media">
                {% for medium in media %}
                    <li>
                        <a href="{% url blog_media id=medium.id %}">
                            {% include "blog/_sidebar_media.tpl" width=223 align="block" id=medium %}
                        </a>
                    </li>
                {% endfor %}
            </ul>
        </div>
    {% endif %}
{% endwith %}