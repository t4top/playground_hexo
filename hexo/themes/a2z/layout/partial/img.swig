{% if excerpt %}
  {% if trim(post.thumb) != "" %}
    <img class="excerpt_img" src="{{ url_for(post.thumb) }}" alt="{{ post.title }}" title="{{ post.title }}" />
  {% endif %}
{% else %}
{% endif %}
