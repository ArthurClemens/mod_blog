{% lib
    "css/twitter_bootstrap.min.css"
    "css/mod_blog.css"
%}
{% if id %}
{% block shorturl %}                <link rel="shorturl" href="{% url blog_article id=id %}" />{% endblock %}
{% block canonical %}                <link rel="canonical" href="{% url blog_article id=id slug=m.rsc[id].slug %}" />{% endblock %}
{% endif %}