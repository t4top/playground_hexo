{% if page.comments && config.disqus_shortname %}
<section class="comments">
  <div id="disqus_thread"></div>
<script>
  var disqus_shortname = '{{ config.disqus_shortname }}';
  var disqus_url = '{{ url }}';
  var disqus_title = {{ JSON.stringify(page.title) }};
  var disqus_config = function(){
    this.language = '{{ disqus_lang() }}';
  };
  (function(){
    var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
    dsq.src = 'https://go.disqus.com/embed.js';
    dsq.setAttribute('data-timestamp', +new Date());
    (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
  })();
</script>
</section>
{% endif %}
