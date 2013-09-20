<!DOCTYPE html>
<html lang="{{ z_language|default:"en"|escape }}">
	<head>
		<meta charset="utf-8" />
		<title>{% block title %}{% endblock %} &mdash; {{ m.config.site.title.value }}</title>

		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		{% all include "_html_head.tpl" %}

		{% lib
            "bootstrap/css/bootstrap.min.css"
			"css/jquery.loadmask.css"
			"css/z-menu.css"
		%}

		{% block html_head_extra %}{% endblock %}
	</head>
	<body class="{% block page_class %}page{% endblock %}">

		{% block navbar %}
            {% include "blog/_header.tpl" %}
        {% endblock %}

        {% block main %}
            <div class="container">

                {% block hero %}{% endblock %}
                
                <div class="row content">
                    {% block content_area %}

                        <div class="span9">
                            {% block content %}
                                <!-- The default content goes here. -->
                            {% endblock %}
                        </div>

                        <div id="sidebar" class="span3">
                            {% block sidebar %}
                                <!-- The sidebar content goes here. -->
                            {% endblock %}
                        </div>

                    {% endblock %}

                </div>

                <div class="row">
                    <div class="span12" id="footer">
                        <!-- The footer content goes here. -->
                    </div>
                </div>
            </div>
        {% endblock %}
        
		{% include "_js_include_jquery.tpl" %}
		{% lib
			"bootstrap/js/bootstrap.min.js"
			"js/apps/zotonic-1.0.js"
			"js/apps/z.widgetmanager.js"
			"js/modules/livevalidation-1.3.js"
			"js/modules/z.inputoverlay.js"
			"js/modules/z.dialog.js"
			"js/modules/jquery.loadmask.js"
			"js/z.superfish.js"
		%}

		{% block _js_include_extra %}{% endblock %}

		<script type="text/javascript">
			$(function() { $.widgetManager(); });
		</script>

		{% stream %}
		{% script %}

		{% all include "_html_body.tpl" %}
	</body>
</html>
