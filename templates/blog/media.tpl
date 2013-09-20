{% extends "blog/article.tpl" %}

{% block below_summary %}
    {% if m.rsc[id].depiction %}
        <figure class="image-wrapper block-level-image">
            {% media m.rsc[id].depiction width=445 crop class=align alt=m.rsc[id].title %}
        </figure>
    {% endif %}
{% endblock %}