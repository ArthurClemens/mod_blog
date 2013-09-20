<h4>{_ Tags _}</h4>
<ul class="blog-tags clearfix">
    {% for id, count in results %}
        <li><a class="label" href="{% url blog_keyword id=id slug=m.rsc[id].slug %}">{{ m.rsc[id].title }} <span class="muted">{{ count }}</span></a></li>
    {% endfor %}
</ul>