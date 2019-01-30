<!-- Facebook -->
<a class="article_share_facebook" href="https://www.facebook.com/sharer.php?u={{ encodeURIComponent(post.permalink) }}" target="_blank" title="Facebook" data-url="{{ post.permalink }}" data-id="{{ post._id }}"><i class="fa fa-facebook-official"></i></a>
<!-- Twitter -->
<a class="article_share_twitter" href="https://twitter.com/intent/tweet?url={{ encodeURIComponent(post.permalink) }}" target="_blank" title="Twitter" data-url="{{ post.permalink }}" data-id="{{ post._id }}"><i class="fa fa-twitter"></i></a>
<!-- PInterest -->
<a class="article_share_pinterest" href="http://pinterest.com/pin/create/button/?url={{ encodeURIComponent(post.permalink) }}" target="_blank" title="Pinterest" data-url="{{ post.permalink }}" data-id="{{ post._id }}"><i class="fa fa-pinterest"></i></a>
<!-- Snail mail -->
<a class="article_share_mail" href="mailto:?subject={{ post.title }}&body={{ encodeURIComponent(post.permalink) }}" target="_blank" title="Send via Email"><i class="fa fa-envelope-o"></i></a>
