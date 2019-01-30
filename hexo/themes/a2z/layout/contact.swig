<div class="main">
  {{ page.content }}
  <form class="ajax" id="contact_form" method="post" action="https://script.google.com/macros/s/AKfycbxM-sGI6OtXQsRspTTteZ0hLsdsUzYvJMewWaSIgp9C3ZTN7ls/exec">
    <p>
        We would love to hear from you. Please use below form to send us your message or questions.
        All fields with <span class="required">*</span> are required.
    </p>
    <div>
        <label for="name">Name <span class="required">*</span></label>
        <input id="name" name="name" type="text" placeholder="Enter your name" required aria-required=”true” title="Name" pattern="\s*\S+[\s\S]*" maxlength=”100” />
        <div id="name_wrong" class="error_msg hideme">Name is required</div>
    </div>
    <div>
        <label for="email">Email Address <span class="required">*</span></label>
        <input id="email" name="email" type="email" placeholder="Enter your email" required aria-required=”true” title="Email" />
        <div id="email_wrong" class="error_msg hideme">Email is not valid</div>
        <label for="newsletter">
        <input id="newsletter" name="newsletter" type="checkbox" /> Inform me of new posts
        </label>
    </div>
    <div>
        <label for="message">Message <span class="required">*</span></label>
        <textarea id="message" name="message" placeholder="Enter your message, questions, etc." cols="45" rows="10" required aria-required=”true” title="Message"></textarea>
        <div id="message_wrong" class="error_msg hideme">Message is required</div>
    </div>
    <div class="hideme">
        <label for="empty">Keep this field empty</label>
        <input id="empty" name="empty" type="text" placeholder="Keep this field empty" />
    </div>
    <div>
        <button type="submit" id="btn_submit">Submit Comment</button>
    </div>
  </form>
  <p id="thanks_msg" class="hideme">Thanks a lot for your message.</p>
  {{ js('js/contact') }}
</div>
