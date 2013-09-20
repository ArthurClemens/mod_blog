<small class="text-muted">{_ Posted on _} {{ m.rsc[id].publication_start|date:"j F Y"}}
{% if m.rsc[id].author.id %}{_ by _} <a class="" href="{% url blog_author id=m.rsc[id].author.id %}">{{ m.rsc[id].author.title }}</a>{% endif %}
</small>
