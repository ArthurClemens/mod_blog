{% extends "blog/site_base.tpl" %}

{% block content_area %}
    {% block chapeau %}{% endblock %}

    <div class="span9">
        {% block content %}
            <!-- The default content goes here. -->
        {% endblock %}
    </div>

    <div id="sidebar" class="span3">
        {% block sidebar %}
            {% include "blog/_sidebar.tpl" %}
        {% endblock %}
    </div>

{% endblock %}