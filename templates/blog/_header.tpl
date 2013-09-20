<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <a class="brand" href="{% url blog %}">{{ m.config.site.title.value|default:"Your Zotonic Site" }} {% if m.config.site.subtitle.value %}{% endif %}</a>

            {% menu id=id %}
        </div>
    </div>
</div>