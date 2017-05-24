# Crafter CMS Blueprint: Art Showcase

Art Showcase is a stylish single page Crafter 3 blueprint with video backgrounds. It's based on the Exigo HTML theme by [Shravan Hotha](https://dribbble.com/shots/2714774-Exigo-PSD-Freebie) and [Ataur Rahman](https://bootstrapthemes.co/author/xpeedstudio/) available here https://bootstrapthemes.co/item/exigo-free-html5-creative-portfolio-template/

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

# Known Issues

## Video Playback on Safari
In Safari (Chrome and Firefox work properly), videos are not displayed. This seems to occur due to lack of implementation for [206 Partial Content](https://httpstatuses.com/206) and its associated headers. However, this can be fixed by configuring Tomcat to serve this files statically.

To do this, edit the file `apache-tomcat/conf/server.xml` and add a context like this:

    <Context docBase="../../data/repos/sites/<your-site>/sandbox/static-assets/video" path="/static-assets/video" />

You may need to tweak the docbase a bit, to begin with, replace `<your-site>` with your site's name. You may also prefer to point to `published/` instead of `sandbox/`, and for your live site, it's a different path, similar to `/opt/crafter/bin/delivery/data/deployer/deployments/<your-environment>/<your-site>/`.
More information in [Tomcat's docs](https://tomcat.apache.org/tomcat-8.0-doc/config/context.html).

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
