{% set page.layout = 'index' %}
<div class="bg">
  <video autoplay muted loop id="bg_video" poster="{{ url_for('img/wip.jpg') }}">
    <source src="https://www.w3schools.com/howto/rain.mp4" type="video/mp4">
  </video>
</div>
<div class="main">
  <div class="thumbs">
      <a href="{{ url_for('/ozlem') }}">
          <div class="thumb">
              <img src="img/wip.jpg" alt="Ozlem">
              <h2>Ozlem</h2>
          </div>
      </a>
      <a href="{{ url_for('/deniz') }}">
          <div class="thumb">
              <img src="img/wip.jpg" alt="Pelumi Deniz">
              <h2>Pelumi Deniz</h2>
          </div>
      </a>
      <a href="{{ url_for('/temi') }}">
          <div class="thumb">
              <img src="img/wip.jpg" alt="Temi">
              <h2>Temi</h2>
          </div>
      </a>
  </div>
  {{ page.content }}
</div>