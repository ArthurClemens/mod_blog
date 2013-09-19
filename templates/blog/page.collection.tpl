{% extends "blog/page.tpl" %}

{% block below_body %}
<ul class="media-list">
	{% for id in m.rsc[id].o.haspart %}
	    {% if id.is_published %}
    		{% include "blog/_article_summary.tpl" id=id %}
    	{% endif %}
	{% endfor %}
</ul>
{% endblock %}
