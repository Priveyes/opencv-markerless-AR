###based on takmin project:

url： https://github.com/takmin/OpenCV-Marker-less-AR

### Windows version.

I hava compiled the source code under windows 8. and changed the opencv version to 2.4.9.
The visual-studio-2012 project can be found under the "src" folder.

this is my testing video : 

http://webgl.qiniudn.com/marker.m4v

### Android version (not finished.)

I have tested the recognize part on the android platform with the opencv 2.4.9, I have to compile libnonfree.a from the opencv source. 

This work based on the opencv-android-demo, the recognize-part-src was compiled with NDK, then running under my Android Phone, but it's too slow, so I continue the work with iPhone 5C (much better than my android phone).

### iOS version : 

video:

http://webgl.qiniudn.com/CV-ios.m4v

Under iphone 5c , the recognize part cost 50-80ms, while tracking part cost 15-25ms, much quicker.
I have made some changes to the source to making it quicker. But the speed is still not so good with mobile phones. Also , when tracking , there are accumulated-mistakes which cause the pose very easy to fail.


=============================

BTW, I'm working on a Markless tracking project on my current job, video can be found:

##http://meiroo.github.io/projects#ar
