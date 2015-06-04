<h4>{_ Articles on _}</h4>
<ul class="blog-tags clearfix">
    {% for id, count in results %}
        <li><a class="label label-default" href="{% url blog_keyword id=id slug=m.rsc[id].slug %}">{{ m.rsc[id].title }} <span class="text-muted">{{ count }}</span></a></li>
    {% endfor %}
</ul>
