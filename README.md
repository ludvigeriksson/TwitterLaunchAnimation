![](/resources/twitter-launch-animation - baner.png)

## About
Project with launch animation as Twitter. On GitHub many projects, but this is very similar to the original animation and you can use it your project very simple

<img src="https://raw.githubusercontent.com/IvanVorobei/TwitterLaunchAnimation/master/resources/twitter-launch-animation - mockup_preview.gif" width="600">

## Requires
Xcode 8 and Swift 3. Ready for use ios8+

## Integrate

Drop in the Sparrow folder to your Xcode project (make sure to enable "Copy items if needed" and "Create groups").

Or via CocoaPods:
    
    pod 'Sparrow/LaunchAnimation’, :git => 'https://github.com/IvanVorobei/Sparrow.git’

## How use
Add line code in AppDelegate file:

	SPLaunchAnimation.asTwitter(onWindow: self.window!)

Realy simple? It use LaunchScreen with name "LaunchScreen.stroryboard" for default. If on launchScreen many subviews (not one) - set numeric subviews "numberLogoAsSubview" when call "asTwitter". Please, not use raster picture in image on launchScreen, you will see a bad mask when animation start. Use vector, ex. pdf

or use 

	let twitterLogoBezierPath = SPBezierPathFigure.logoTwitter()
    SPLaunchAnimation.asTwitter(withIcon: twitterLogoBezierPath, onWindow: self.window!)

It is func more difficult, but it looks perfect. You shoud set vector image in launchScreen and crete UIBezierPath identical you logo. When the animation starts - logo quietly replaced with bezierPath-variant and scale animation look perfect for any device. For ex. you can find twitter logo in bezierPath-variant in project (not install with pods)

## Problems and advice
Logo should vector. In animations used a large scale and problems of bitmap images - loss of quality with scale. I recomended use BezierPath, but if this is not possible - UIImage in pdf

## Realy Twitter Launсh animation?
Twitter developers use intuitive animation: first, the logo is compressed further - increasing. To animation was look good should be used timing curves. But the standard curve did not give a result similar to the real laucnh animation. Experimentally, I've found the correct curve

##  How I compared with original
I rec the screen of iPhone for the launch of the original animation and compared frame with my project, correcting and adjusting values. I spent a week at the correction values

<img src="https://raw.githubusercontent.com/IvanVorobei/TwitterLaunchAnimation/master/resources/twitter-launch-animation - compare.gif" width="400">

## Other
In the project, you can find my library [Sparrow](https://github.com/IvanVorobei/Sparrow). If you used CocoaPods - installed only a part of the library with launch animation. If you import files to a project as static library (drag and drop) - you can easily import files only for launch animation

![](/resources/twitter-launch-animation - frequently-asked-questions.png)

## License
TwitterLaunchAnimation-project is released under the MIT license. See LICENSE.md for details.

## Contact
 
[http://hello.ivanvorobei.by](http://hello.ivanvorobei.by)

[http://ivanvorobei.by](http://hello.ivanvorobei.by)

hello@ivanvorobei.by

## Support
The project is fully free, I do not impose any restrictions on its use. I'm just like you - want to do useful things. If you have a desire to help - you can tell friends about the project or [donate](http://ivanvorobei.by/donate). Thank!
