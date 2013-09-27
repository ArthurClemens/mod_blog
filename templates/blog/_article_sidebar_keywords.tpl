{% with id.o.subject as tags %}
    {% if tags %}
        <div class="blog-sidebar hidden-print">
            <h4>{_ Tags _}</h4>
            <ul class="blog-tags clearfix">
                {% for keyword_id in tags %}
                    {% if keyword_id.is_published %}
                        <li><a class="label{% if keyword_id == id %} blog-selected-keyword{% endif %}" href="{% url blog_keyword id=keyword_id %}">{{ m.rsc[keyword_id].title }}</a></li>
                    {% endif %}
                {% endfor %}
            </ul>
        </div>
    {% endif %}
{% endwith %}