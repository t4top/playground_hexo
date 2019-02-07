{% if trim(post.content) != "" %}
<article class="article" itemscope itemtype="http://schema.org/Article">
  {% if is_post() %}
    <header>
        <h1 class="article_title" itemprop="name">{{ post.title }}</h1>
    </header>
    <span class="article_header">
      By <span itemprop="author">{{ post.author }}</span>
      / <time datetime="{{ date_xml(post.date) }}" itemprop="date_published">{{ date(post.date) }}</time>
      {% if post.comments && config.disqus_shortname %}
      / <span class="disqus-comment-count" data-disqus-url="{{ url }}"></span>
      {% endif %}
    </span>
  {% endif %}
  {{ partial('img', {post: post, excerpt: true}) }}
  {{ page_anchor(post.content) }}
  <span class="article_meta">
    {{ partial('meta', {post: post}) }}
  </span>
  <span class="article_share">
    <strong>Share This Post:</strong>
    {{ partial('share', {post: post}) }}
  </span>
</article>
{% endif %}
