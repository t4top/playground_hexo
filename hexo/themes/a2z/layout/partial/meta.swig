<span class="meta_author" itemprop="author">
  <i class="fa fa-user-o"></i>
  {{ post.author }}
</span>
<span class="meta_date">
  <i class="fa fa-calendar"></i>
  <time datetime="{{ date_xml(post.date) }}" itemprop="date_published">{{ date(post.date) }}</time>
{% if post.updated.isAfter(post.date, 'day') %}
  (<time datetime="{{ date_xml(post.updated) }}" itemprop="date_modified">Updated: {{ date(post.updated) }}</time>)
{% endif %}
</span>
{% if post.comments && config.disqus_shortname %}
<span class="meta_comment">
  <i class="fa fa-comment-o"></i>
  <span class="disqus-comment-count" data-disqus-url="{{ url }}"></span>
</span>
{% endif %}