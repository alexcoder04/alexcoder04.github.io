---
layout: post
title:  "LineageOS on Samsung M20"
date:   2022-10-24 21:31:44 +0200
tags: [smartphone, lineage, opinion]
---

I am a free software enthusiast and a proponent of minimalism, and this is also true for the mobile space.
I switched to [LineageOS](https://lineageos.org) almost one year ago, as Samsung stopped shipping updates for my phone,
and I got tired of the bloated stock Android, so in this post I want to share my experiences.

## Installation Process

The installation was extremly easy on my phone: I just followed the instructions on the LineageOS website
and everything worked without problems. I had to turn some kind of switch in the developer settings
(unlock bootloader or enter some kind of special download mode I guess), then start the phone with
a specific button combination pressed, flash the recovery and install install LineageOS from it.

That's it.

## Performance and Battery Life

Although my phone ([Samsung Galaxy M20](https://wiki.lineageos.org/devices/m20lte/), released 2019, 4GB RAM, 64GB storage, 5000mAh battery)
is already three years old, it still runs very smoothly. I mean perfectly fine. I never had any performance problems,
even running in battery saver all the time, and the battery holds for two or three days with my usage (at the very beginning it lasted even up to five days).

## Hardware Problems on LineageOS

After installing LineageOS, several things are not working as expected, however it is not really a big deal for me:

1. Low speaker volume: all sounds are not such intense; and in noisy atmospheres, it is difficult to hear the media playing.
2. Wide angle camera not working at all.
3. Camera quality dropped drastically compared to the stock ROM.

## Absense of Google Play Services

LineageOS ships without the Google Play Services and Google Apps, but this is rather an advantage for me as I try to avoid using
proprietary apps; the only Google app I'm using is Google Maps, and even that not on a regular basis.

I'm using the [microg](https://lineage.microg.org) variant of LineageOS, so I can receive push notifications on messenger apps through
Google Cloud Messaging, which works very well.

## Default Apps

LineageOS comes with a set of default apps like calendar, camera, gallery etc., which are mostly based on AOSP.
These are pretty barebones, however I ended up replacing only two of them: file manager and gallery with both
[SimpleMobileTools](https://simplemobiletools.com) counterparts; also I switched to Brave instead of their browser app.
The rest, however, is working perfectly and I find it even better than the Samsung versions, which are very bloated
(compare LineageOS Calculator (57kB) vs Samsung Calculator (around 20-50MB) with almost the same functionality).
I even don't need to mention, that all the un-installable bloatware like Facebook, Netflix, Microsoft Office (who uses these on a phone?)
from the stock ROM, don't bother me anymore.

The OS itself is also much more customizable than Samsung's and allows creating own themes by combining accent colors, icon shapes and fonts.

## Updates

Samsung supplied my phone for only about two years with updates, delivering two updates a year (if I remember correctly),
which even then were several months behind. On Lineage, on the other hand, I'm getting security updates at least every month and can use
Android 11, which was not provided by Samsung. However, Android 12 and 13 are already out there and they probably won't be ported to my device,
as this is too much work for the maintainer and the userbase is not very big.

## Outlook

So, from my feeling, I will get updates for another couple of months, maybe a year, as long as Android 11 is still maintained; after that I will
have to look for a new solution. I thought about different options - Google Pixel, Fairphone, Motorola - but I'm still unsure.

What I'm pretty sure about: the M20 in combination with LineageOS did, is doing and will do a great job until then
and my next device will certainly run LineageOS as well.
