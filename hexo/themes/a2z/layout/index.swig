<div class="bg">
  <video autoplay muted loop id="bg_video" poster="{{ url_for('img/wip.jpg') }}">
    <source src="https://www.w3schools.com/howto/rain.mp4" type="video/mp4">
  </video>
</div>
<div class="main">
  {{ page.content }}
</div>