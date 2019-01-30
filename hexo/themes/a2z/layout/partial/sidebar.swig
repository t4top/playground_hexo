{#
{% if trim(page.content) != "" %}
{% endif %}
<div class="sidebar_toc">
  <strong class="sidebar_title">Table of Content</strong>
  {{ toc(page.content, {list_number: false}) }}
</div>
<div class="sidebar_category">
  <strong class="sidebar_title">Categories</strong>
  {{ list_categories({show_count: false}) }}
</div>
<div class="sidebar_tags">
  <strong class="sidebar_title">Tags</strong>
  {{ list_tags({show_count: false}) }}
</div>
#}