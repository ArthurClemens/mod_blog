{% with id.o.subject as tags %}
    {% if tags %}
        <div class="blog-sidebar hidden-print">
            <h4>{_ Tags _}</h4>
            <ul class="blog-tags clearfix">
                {% for id in tags %}
                    {% if id.is_published %}
                        <li><a class="label label-info" href="{% url blog_keyword id=id %}">{{ m.rsc[id].title }}</a></li>
                    {% endif %}
                {% endfor %}
            </ul>
        </div>
    {% endif %}
{% endwith %}