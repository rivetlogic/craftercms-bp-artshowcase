# Crafter CMS Blueprint: Art Showcase

Art Showcase is a stylish single page Crafter 3 blueprint with video backgrounds. It's based on the Exigo HTML theme by [Shravan Hotha](https://dribbble.com/shots/2714774-Exigo-PSD-Freebie) and [Ataur Rahman](https://bootstrapthemes.co/author/xpeedstudio/) available here https://bootstrapthemes.co/item/exigo-free-html5-creative-portfolio-template/

# Contact Us
Contact Us sends no mails out of the box. You can specify what to do with the received form data by editing the controllers at

  - /scripts/rest/mail.post.groovy

# Configuring e-mail

To configure the mail server, you need to modify the MailHelper groovy class. It resides in `/scripts/utils/MailHelper.groovy` and makes use of [Spring's JavaMailSender](http://docs.spring.io/spring-framework/docs/current/javadoc-api/org/springframework/mail/javamail/JavaMailSender.html), which is configured using JavaMail's properties:

- IMAP (https://javamail.java.net/nonav/docs/api/com/sun/mail/imap/package-summary.html)
- POP3 (https://javamail.java.net/nonav/docs/api/com/sun/mail/pop3/package-summary.html)
- SMTP (https://javamail.java.net/nonav/docs/api/com/sun/mail/smtp/package-summary.html)

With this, you'll be able to use a mail server different from `localhost` and even add authentication. For example, to modify the host, edit

```java
		mailSender.host = "localhost"
		mailSender.port = 25
		mailSender.protocol = "smtp"
```

# Additional Licenses
The Art Showcase blueprint also contains the following resources, separate from those of Exigo:

- [Freewall](http://kombai.github.io/freewall/) under MIT license
- [JQuery Scroll Indicator Bullets](http://mruoss.github.io/jquery-scroll-indicator-bullets/) under MIT license
- [Waypoints](https://github.com/imakewebthings/waypoints) under MIT license
- Rain - 78.vid from https://pixabay.com/en/videos/rain-thunder-water-lightning-78/ under Public Domain License
- White and Black Vanity Table Near Wll from https://www.pexels.com/photo/white-and-black-vanity-table-near-wll-205317/ under Public Domain License
- Exhibit Painting Display from https://www.pexels.com/photo/exhibit-painting-display-69903/ under CC0 (Public Domain equivalent)
- Female typing from https://pixabay.com/en/videos/computer-keyboard-typing-hands-3174/ under Public Domain
- Museum minute from https://archive.org/details/Minuut under Public Domain
