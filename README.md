![](/resources/twitter-launch-animation_baner.png)

## About
Twitter-like launchscreen animation. There are a lot of projects on Github with the same objective, but this one is very similar to the original animation and you can use it in your project in a very simple way

<img src="https://raw.githubusercontent.com/IvanVorobei/TwitterLaunchAnimation/master/resources/twitter-launch-animation-mockup-preview.gif" width="600">

## Requirements
Xcode 8 and Swift 3. Ready for use on iOS 8+

## Integration

Drop in Sparrow folder to your Xcode project (make sure to enable "Copy items if needed" and "Create groups").

Or via CocoaPods:
    
    pod 'Sparrow/LaunchAnimation’, :git => 'https://github.com/IvanVorobei/Sparrow.git’

## How to use
Add just one line of code in AppDelegate file:

	SPLaunchAnimation.asTwitter(onWindow: self.window!)

Really simple, doesn't it? It uses LaunchScreen with name "LaunchScreen.stroryboard" for default. If there are a lot of subviews on your launchScreen, set numeric subviews "numberLogoAsSubview" when call "asTwitter". Please, do not use raster picture on launchScreen, you will see freezing mask when the animation starts. Do use vector one, ex. pdf

or use 

	let twitterLogoBezierPath = SPBezierPathFigure.logoTwitter()
    SPLaunchAnimation.asTwitter(withIcon: twitterLogoBezierPath, onWindow: self.window!)

This way is more difficult, but it looks better. You should set vector image on the launchScreen and create UIBezierPath identical to you logo. When the animation starts - logo is quietly replaced with bezierPath-variant and scale-animation looks perfect on all devices. Just for example: you can find twitter logo in bezierPath-variant in the project (which is not installed with pods)

## Problems and a piece of advice
Do use vector logo. Raster images cause quality loss with large scaling. I recommend you to use BezierPath, but if it's not possible UIImage in pdf is a good alternative

![](/resources/twitter-launch-animation_frequently-asked-questions.png)

## Is it real Twitter Launсh animation?
Twitter developers use intuitive animation: firstly the logo is compressed, then it's enlargen. In order to make animation looks good, timing curves should be used. But the standard curve don't give the result similar to the real launch animation. Experimentally, I've found the correct curve

## Comparison with original
I recorded the screen with the launch of the original animation and compared frame with my project, correcting and adjusting values. I spent a week on correcting the values

<img src="https://raw.githubusercontent.com/IvanVorobei/TwitterLaunchAnimation/master/resources/twitter-launch-animation_compare.gif" width="400"> 

## License
TwitterLaunchAnimation is released under the MIT license. Check LICENSE.md for details

## Other
![](/resources/twitter-launch-animation_powered-by-sparrow.png)

In the project you can find my library [Sparrow](https://github.com/IvanVorobei/Sparrow). It’s a library with a full functionality. If you want to use only TwitterLaunchAnimation, you can easily delete extra files from library. All will work fine. If you install via CocoaPods, only necessary files will be installed

## Contact
 
[http://hello.ivanvorobei.by](http://hello.ivanvorobei.by)

[http://ivanvorobei.by](http://hello.ivanvorobei.by)

hello@ivanvorobei.by

## Support
The project is fully free, I do not impose any restrictions on its use. I'm, just like you, want to do useful things. If you have a desire to help, tell friends about the project or [donate](http://ivanvorobei.by/donate). Thanks!
