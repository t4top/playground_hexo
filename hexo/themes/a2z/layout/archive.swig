{% set page.title = 'Blogs' %}
{% set page.layout = 'blog' %}
<div class="main">
  <h1>Recent Posts</h1>
  {% for post in site.posts.sort('-date') %}
  <div class="post">
    {{ partial('partial/post_list', {post: post}) }}
  </div>
  {% endfor %}
  {# page_nav() #}
  {{ partial('partial/nav') }}
</div>
<aside class="sidebar">
  {{ partial('partial/sidebar') }}
</aside>
