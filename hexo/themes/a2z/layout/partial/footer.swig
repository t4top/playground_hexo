<footer class="footer">
  <div class="footer_copyright">
    &copy; {{ date(Date.now(), 'YYYY') }} {{ config.title or config.author }}<br>
    Powered by <a href="http://hexo.io/" target="_blank">Hexo</a> 
    (Theme: <a href="https://github.com/t4top/" target="_blank">A2Z</a>)
  </div>
  <div class="footer_links">
    <a href="https://github.com/{{ config.github }}" class="footer_link_github" target="_blank"><i class="fa fa-github"></i></a>
  </div>
  {{ partial('google_analytics') }}
  {% if config.disqus_shortname %}
    <script id="dsq-count-scr" src="//{{ config.disqus_shortname }}.disqus.com/count.js" async></script>
  {% endif %}
</footer>