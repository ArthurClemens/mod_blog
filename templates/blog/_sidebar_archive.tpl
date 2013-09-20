<h4>{_ Archive _}</h4>
<ul class="nav">
    {% for year, months in results %}
    <li><a class="caption" href="{% url blog_archives_y year=year %}">{{ year }}</a>
    <ul class="nav">
        {% for row in months %}
        <li><a href="{% url blog_archives_m year=year month=row.month %}">{{ row.month_as_date|date:"F" }} <span class="muted">{{ row.count }}</span></a></li>
        {% endfor %}
    </ul>
    </li>
    {% endfor %}
</ul>