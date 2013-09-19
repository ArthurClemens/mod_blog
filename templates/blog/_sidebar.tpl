{# Cache the sidebar, depending on the stuff in the 'article' category #}
{% cache 3600 cat='article' %}

	{% optional include "blog/_tweets.tpl" %}

    <div class="blog-sidebar hidden-print">
	    <h4>{_ Archive _}</h4>
	    <ul class="nav">
		    {% for year, months in m.search[{archive_year_month cat='article'}] %}
			<li><a class="caption" href="{% url blog_archives_y year=year %}">{{ year }}</a>
			<ul class="nav">
				{% for row in months %}
				<li><a href="{% url blog_archives_m year=year month=row.month %}">{{ row.month_as_date|date:"F" }} <span class="muted">{{ row.count }}</span></a></li>
				{% endfor %}
			</ul>
			</li>
		    {% endfor %}
	    </ul>

	    <h4>{_ Tags _}</h4>
	    <ul class="nav">
		    {% for id, count in m.search[{keyword_cloud cat='article'}] %}
		        <li><a href="{% url blog_keyword id=id slug=m.rsc[id].slug %}">{{ m.rsc[id].title }} <span class="muted">{{ count }}</span></a></li>
		    {% endfor %}
	    </ul>
    </div>
    
{% endcache %}

{% include "_edit_button.tpl" %}
