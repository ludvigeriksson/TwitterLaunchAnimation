![](/resources/twitter-launch-animation - baner.jpg)

## About
Project with launch animation of Twitter. On GitHub many projects, but this is very similar to the original animation

<img src="https://raw.githubusercontent.com/IvanVorobei/TwitterLaunchAnimation/master/resources/twitter-launch-animation - mockup_preview.gif" width="600">

## How use
Add some lines code in AppDelegate file:

	let twitterLogoBezierPath = SPBezierPathFigure.logoTwitter()
	SPLaunchAnimation.asTwitter(icon: twitterLogoBezierPath, onWindow: self.window!)

or 

	let twitterLogoImage = UIImage.init(named: "twitter-logo")!
	SPLaunchAnimation.asTwitter(icon: twitterLogoImage, onWindow: self.window!)

You must pass the current window as a parameter to a function

## Realy Twitter Launсh animation?
Twitter developers use intuitive animation: first, the logo is compressed further - increasing. To animation was look good should be used timing curves. But the standard curve did not give a result similar to the real laucnh animation. Experimentally, I've found the correct curve

<img src="https://raw.githubusercontent.com/IvanVorobei/TwitterLaunchAnimation/master/resources/twitter-launch-animation - compare.gif" width="400">

## Problems and advice
Logo located above the center axis and rootView resizes the end of the animation. So we had to do a lot of calculations. You can see it with your code.

Logo should vector. In animations used a large scale and problems of bitmap images - loss of quality with scale. I recomended use BezierPath, but if this is not possible - UIImage in pdf

##  How I compared with original
I rec the screen of iPhone for the launch of the original animation and compared frame with my project, correcting and adjusting values. I spent a week at the correction values

## Other
In the project you will find my library [Sparrow](https://github.com/IvanVorobei/Sparrow), it's what I use. But if needed, you can easily to remove it and do not use [Sparrow](https://github.com/IvanVorobei/Sparrow) in their projects 

## License
TwitterLaunchAnimation-project is released under the MIT license. See LICENSE.md for details.

## Contact:
 
[http://hello.ivanorobei.by](http://hello.ivanvorobei.by)

[http://ivanorobei.by](http://hello.ivanvorobei.by)

hello@ivanvorobei.by
