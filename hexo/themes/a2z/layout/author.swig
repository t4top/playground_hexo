{% set expand_first_post = false %}
<div class="main">
  {{ partial('partial/post', {post: page}) }}
  {# show all posts under site by the author #}
  {% for post in site.posts.sort('-date') %}
    {% if post.author.indexOf(page.author) !== -1 %}
      <div class="post">
      {% if expand_first_post == true %}
        {{ partial('partial/post', {post: post}) }}
        {% set expand_first_post = false %}
      {% else %}
        {{ partial('partial/post_list', {post: post}) }}
      {% endif %}
      </div>
    {% endif %}
  {% endfor %}
  {{ partial('partial/nav') }}
</div>
<aside class="sidebar">
  {{ partial('partial/sidebar') }}
</aside>
