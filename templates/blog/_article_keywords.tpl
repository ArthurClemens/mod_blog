{% with id.o.subject as tags %}
    {% if tags %}
        <div class="blog-sidebar hidden-print">
            <h4>{_ Tags _}</h4>
            <ul class="blog-tags clearfix">
                {% for id in tags %}
                    <li><a class="label label-info" href="{% url blog_keyword id=id slug=m.rsc[id].slug %}">{{ m.rsc[id].title }}</a></li>
                {% endfor %}
            </ul>
        </div>
    {% endif %}
{% endwith %}