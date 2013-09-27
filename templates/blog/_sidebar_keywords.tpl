<h4>{_ Articles on _}</h4>
<ul class="blog-tags clearfix">
    {% for keyword_id, count in results %}
        <li><a class="label{% if keyword_id == id %} blog-selected-keyword{% endif %}" href="{% url blog_keyword id=keyword_id slug=m.rsc[keyword_id].slug %}">{{ m.rsc[keyword_id].title }} <span class="blog-archive-count">{{ count }}</span></a></li>
    {% endfor %}
</ul>