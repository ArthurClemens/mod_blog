<h4>{_ Archive _}</h4>
<ul class="nav">
    {% for year, months in results %}
        <li>
            {% if q.year == year and not q.month %}
                <span>{{ year }}</span>
            {% else %}
                <a href="{% url blog_archives_y year=year %}">{{ year }}</a>
            {% endif %}
            <ul class="nav">
                {% for row in months %}
                    <li>
                        {% if q.month == row.month %}
                            <span>{{ row.month_as_date|date:"F" }}</span>
                        {% else %}
                            <a href="{% url blog_archives_m year=year month=row.month %}">{{ row.month_as_date|date:"F" }} <span class="blog-archive-count">{{ row.count }}</span></a>
                        {% endif %}
                    </li>
                {% endfor %}
            </ul>
        </li>
    {% endfor %}
</ul>