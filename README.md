# Uno Zen for Ghost

![Last version](https://img.shields.io/github/tag/Kikobeats/uno-zen.svg?style=flat-square)
[![Gittip](https://img.shields.io/badge/Ghost-0.7.x-brightgreen.svg?style=flat-square)]()
[![Donate](https://img.shields.io/badge/donate-paypal-blue.svg?style=flat-square)](https://paypal.me/kikobeats)

> Minimalist and Elegant theme for Ghost.

[<img src="http://i.imgur.com/LCSB4Ca.jpg">](http://kikobeats.com)

- [Uno Zen for Ghost](#uno-zen-for-ghost)
  * [Introduction](#introduction)
    + [Whats is new in 2.x](#whats-is-new-in-2x)
  * [Installation](#installation)
  * [Update](#update)
    + [Update your current version](#update-your-current-version)
    + [Receive a mail notification when a new version is available](#receive-a-mail-notification-when-a-new-version-is-available)
  * [Development and Customization](#development-and-customization)
  * [Showcase](#showcase)
  * [License](#license)

---

## Introduction

**Uno Zen** is a fork of [Uno for Ghost](https://github.com/daleanthony/Uno) that provides some features missing in the original theme.

### Whats is new in 2.x

- Totally rewritten using HTML5 and CSS3.
- Improved development workflow with gulp + browersync.
- Improved responsive and mobile experience.
- Improved SEO Content with meta tags.

Things that already existed:

- A good [404 page error](http://kikobeats.com/404).
- Search support.
- Multiaccount support.
- Loading progress state for each page.
- Estimation about the time of reading.

You can see a [demo](http://kikobeats.com) in my own blog. Also you can check the [styleguide](http://kikobeats.com/styleguide) to view how it looks.

## Installation

Please ensure that `git` and `curl` is installed on your machine.

Enter the theme folder (`content/themes`) of your Ghost installation and paste the following command:

```bash
$ curl -sSL http://git.io/vcIHr | sh
```

Restart your ghost.

**NOTE:** This theme needs jQuery to works fine, but jQuery library is not provided by the theme. Instead, you need to inject from the `Blog Footer` in the `Code injection` of your Ghost installation:

```html
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
```

It should look like this:
![](https://camo.githubusercontent.com/f600498109f9b8e7d15fadd28b51c75b1f585d0f/687474703a2f2f692e696d6775722e636f6d2f4b365a595933752e706e67)


## Update

One objective of this project is to adopt an effective policy to have the latest version of the theme all the time. We have divided this process into two steps:


### Update your current version

Make sure you're in the uno-zen directory. Then run:

```bash
$ sh scripts/update.sh
```

That's all!

### Receive a mail notification when a new version is available

Stay tuned for new releases with this [IFTTT recipe](https://ifttt.com/recipes):

<div align="center">
<a target="blank" href="https://ifttt.com/recipes/330382-uno-zen-new-release-send-me-an-email"><img src="http://i.imgur.com/sbl8YiZ.png"></a>
</br>
</br>
</div>

## Development and Customization

See in [documentation](https://github.com/Kikobeats/uno-zen/blob/master/DOCUMENTATION.md).

## Showcase

<div align="center">
<a target="blank" href="http://kikobeats.com"><img src="http://i.imgur.com/crE8jt2.png"></a>
<a target="blank" href="http://www.evilsocket.net"><img src="http://i.imgur.com/qanAbQf.png"></a>
<a target="blank" href="http://pupboss.com"><img src="http://i.imgur.com/0AeVKgB.png"></a>
<a target="blank" href="http://www.flaviocorpa.com"><img src="http://i.imgur.com/1ESq2xs.png" /></a>
<a target="blank" href="http://morris.guru"><img src="http://i.imgur.com/s9oimfG.png" /></a>
<a target="blank" href="https://www.mooash.me"><img src="http://i.imgur.com/Ojmkuvw.png" /></a>
<a target="blank" href="http://adrianperez.org"><img src="http://i.imgur.com/XlNFWWA.png" /></a>
<a target="blank" href="http://www.bradenericson.com"><img src="http://i.imgur.com/8wz0LKN.png" /></a>
<a target="blank" href="https://blog.h4t0n.com"><img src="http://i.imgur.com/GPWzqnG.png" /></a>
<a target="blank" href="http://robinz.in"><img src="http://i.imgur.com/qDAbrch.jpg" /></a>
<a target="blank" href="http://biercoff.com"><img src="http://i.imgur.com/goS3pE3.jpg" /></a>
<a target="blank" href="https://randy.sesser.me"><img src="http://i.imgur.com/9hacUJc.jpg" /></a>
<a target="blank" href="http://dan.maharry.me.uk"><img src="http://i.imgur.com/gAeS9jQ.jpg" /></a>
<a target="blank" href="https://ishcha.com"><img src="http://i.imgur.com/u9PGLZj.jpg" /></a>
<a target="blank" href="http://maptime.io/milan"><img src="http://i.imgur.com/hd9tpzq.jpg" /></a>
<a target="blank" href="http://xlbd.me"><img src="http://i.imgur.com/wiqVB9R.jpg" /></a>
<a target="blank" href="http://blog.sujithvishwajith.com/"><img src="http://i.imgur.com/eol02YK.jpg" /></a>
<a target="blank" href="https://carlbernardo.github.io/"><img src="http://i.imgur.com/dihIo6Q.jpg" /></a>
<a target="blank" href="http://www.olddonkey.com/"><img src="http://i.imgur.com/wa4kwnZ.jpg" /></a>
<a target="blank" href="http://www.mohammedovich.com/"><img src="http://i.imgur.com/oiKFBG2.jpg" /></a>
</br>
</br>
</div>

Do you want appear here? Please [add your blog](https://github.com/Kikobeats/uno-zen/issues/new?title=Add%20my%20blog%20into%20showcase&body=The%20URL%20of%20my%20blog%20is:%20)!

## License

MIT © [Kiko Beats](kikobeats.com)
