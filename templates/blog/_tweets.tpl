{% if m.category.tweet %}

    {% with m.search[{latest cat='tweet' pagelen=4}] as r %}
        {% if r.result %}
            <h2>Tweets</h2>
            <ul class="shouts-list">
                {% for tw in r.result %}
                    <li>
                        <p>
                            <img width="28" height="28" src="{{ m.rsc[tw].tweet['user'][2]['profile_image_url'] }}" />
                            <span class="tweet-body">{{ m.rsc[tw].body|twitter }}</span>
                            <span class="tweet-date-time">from {{ m.rsc[tw].tweet["source"] }} by {{ m.rsc[tw].tweet['user'][2]['screen_name'] }}</span>
                        </p>
                    </li>
                {% endfor %}
            </ul>
        {% endif %}
    {% endwith %}

{% endif %}