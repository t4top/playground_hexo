<article class="excerpt" itemscope itemtype="http://schema.org/Article">
  <div class="excerpt_side">
    <a title="{{ post.title }}" href="{{ url_for(post.path) }}">
      {{ partial('img', {post: post, excerpt: true}) }}
    </a>
  </div>
  <div class="excerpt_content">
    <a class="excerpt_link" title="{{ post.title }}" href="{{ url_for(post.path) }}">
      <strong itemprop="name">{{ post.title }}</strong>
    </a>
    {% if post.excerpt %}
      {{ post.excerpt }}
    {% else %}
      {{ truncate(post.content, {length: 300}) }}
    {% endif %}
    <a class="excerpt_more" title="{{ post.title }}" href="{{ url_for(post.path) }}">Read More</a>
    <div class="excerpt_meta">
      {{ partial('meta', {post: post}) }}
    </div>
  </div>
</article>