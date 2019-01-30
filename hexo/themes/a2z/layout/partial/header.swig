{% if page.layout == 'index' %}
  <nav class="navbar">
    <a href="{{ url_for('/contact') }}" class="btn" title="Get in touch">Contact Us</a>
  </nav>
  <header class="header">
    <div class="title">
      <h1>Welcome to our World</h1>
      <a href="{{ url_for('/blogs') }}" class="btn" title="Read more about us">Read More ...</a>
    </div>
  </header>
{% else %}
  <header class="header">
    <nav class="navbar">
      <div class="logo">
        <a href="{{ url_for('/') }}" title="Home">AkinbosoyeZaimoglu</a>
      </div>
      <div class="nav">
      <a class="sidenav_open" onclick="toggleSideNav()"><i class="fa fa-bars"></i><!--&#9776;--></a>
      <ul>
      {% for menu in site.data.menu %}
        {% if is_current(url_for(menu)) %}
          <li><a href="{{ url_for(menu) }}" class="active_link">{{ loop.key }}</a></li>
        {% else %}
          <li><a href="{{ url_for(menu) }}">{{ loop.key }}</a></li>
        {% endif %}
      {% endfor %}
      </ul>
      <div id="sidenav">
        <a href="#" class="sidenav_close" onclick="toggleSideNav()">&times;</a>
        {% for menu in site.data.menu %}
          <a href="{{ url_for(menu) }}">{{ loop.key }}</a>
        {% endfor %}
      </div>
      <script>
        function toggleSideNav(){
          var sideNav = document.getElementById("sidenav");
          sideNav.style.display = (sideNav.style.display === "block") ? "none" : "block";
        }
      </script>
      </div>
    </nav>
    <div class="title">
      <h1 itemprop="name">
        {% if is_post() %}
          Blogs
        {% else %}
          {{ page.title }}
        {% endif %}
      </h1>
    </div>
  </header>
{% endif %}
