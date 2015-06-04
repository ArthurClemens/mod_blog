{#
Does not work well, removed until fixed

{% cache 3600 cat='article' vary=id %}

<div class="prevnext">

	{% for id in m.search[{next cat='article' id=id pagelen=1}] %}
		<div class="next">
			<a class="btn btn-default btn-xs" href="{% url blog_article id=id slug=m.rsc[id].slug %}" title="{{ m.rsc[id].title }}">{_ Next post _}</a>
		</div>
	{% endfor %}

	{% for id in m.search[{previous cat='article' id=id pagelen=1}] %}
		<div class="prev">
			<a class="btn btn-default btn-xs" href="{% url blog_article id=id slug=m.rsc[id].slug %}" title="{{ m.rsc[id].title }}">&laquo; {_ Previous post _}</a>
		</div>
	{% endfor %}

</div>
{% endcache %}
#}
