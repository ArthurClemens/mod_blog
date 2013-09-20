{# Cache the sidebar, depending on the stuff in the 'article' category #}
{% cache 3600 cat='article' %}

	{% optional include "blog/_tweets.tpl" %}

    {% with m.search[{archive_year_month cat='article'}],
            m.search[{keyword_cloud cat='article'}]
            as
            archive_results,
            tag_results
    %}
    
        {% if archive_results or tag_results  %}
    
            <div class="blog-sidebar hidden-print">
            
                {% if archive_results %}
                    {% include "blog/_sidebar_archive.tpl" results=archive_results %}
                {% endif %}
                
                {% if tag_results %}
                    {% include "blog/_sidebar_keywords.tpl" results=tag_results %}
                {% endif %}

            </div>
            
        {% endif %}
        
    {% endwith %}
    
{% endcache %}

{% include "_edit_button.tpl" %}