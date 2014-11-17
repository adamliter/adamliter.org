---
post_author: Adam Liter
date: 2014-07-22
layout: post-default
slug: pgp-transition-statement
title: "PGP Transition Statement"
categories:
- Activism
- Security
tags:
- email
- PGP
nav_child: 3
nav_node: blog
---

#### The announcement

I am transitioning from my old OpenPGP key to a new one.

The old keys that I was using were:

    pub   4096R/0xA823DC343A87C3E1 2013-08-09 [revoked: 2014-07-19]
	      Key fingerprint = 9D58 1CD7 5338 12C1 6BBB  7277 A823 DC34 3A87 C3E1

    pub   4096R/0x8460352F7D1A2CF5 2013-08-09 [revoked: 2014-07-19]
          Key fingerprint = 1FB7 0171 FC95 436E 887B  0874 8460 352F 7D1A 2CF5

I have issued recovcations for both of these keys, and the [new key][NewKey] that I am using is:

	pub   4096R/0x98723A2089026CD6 2014-07-22
          Key fingerprint = 375B 6314 1683 A4D4 669E  1217 9872 3A20 8902 6CD6

You can fetch the key from a public server with:

    gpg --keyserver keys.riseup.net --recv-key '0x98723a2089026cd6'

I have signed this new key with my old keys, which you can verify, if you already had my old keys.

#### The rationale

I was previously using two keys---one for each of my email addresses---which doesn't necessarily make the most sense. Moreover, I have now set things up to use subkeys and am actively protecting the master key. This is ultimately a better set up than what I was using before. If you would like to do something similar, either of these tutorials ([1][1], [2][2]) would be helpful for doing so, and they both briefly touch on why this is a better set up.

[NewKey]: https://bit.ly/adamliterpgp
[1]: http://www.void.gr/kargig/blog/2013/12/02/creating-a-new-gpg-key-with-subkeys/
[2]: https://alexcabal.com/creating-the-perfect-gpg-keypair/
[commits]: https://github.com/adamliter/adamliter.github.io/commits/master/_posts/2014-07-22-pgp-transition-statement.md
