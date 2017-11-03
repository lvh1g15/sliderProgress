# SliderProgress

[![Version](https://img.shields.io/cocoapods/v/SliderProgress.svg?style=flat)](http://cocoapods.org/pods/SliderProgress)
<img src="https://img.shields.io/badge/platform-iOS-orange.svg?style=flat" alt="Platform iOS" />
<img src="https://img.shields.io/badge/license-MIT-green.svg?style=flat" alt="License MIT" />

<p align="center">
  <img src="https://user-images.githubusercontent.com/17392781/32379318-1dc4f02e-c0a5-11e7-8d49-495b4e7edf8e.gif">
  <img src="https://user-images.githubusercontent.com/17392781/32379154-a9dffe2e-c0a4-11e7-81ce-af31e73e41f4.gif">
</p>

## Requirements

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

SliderProgress is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SliderProgress'
```

## Author

Landon Vago-Hughes, Contact: Landonvagohughes3@gmail.com

## License

SliderProgress is available under the MIT license. See the LICENSE file for more info.

## Swipe down usage
This usage if for if you wish to swipe down and see how much you need to swipe down until the view will dismiss

```Swift

import SliderProgress

class ViewController: UIViewController, UIScrollViewDelegate {

weak var progressBar: SwipeProgression!

override func viewDidLoad() {
    let progressions: SwipeProgression = SwipeProgression(frame: CGRect.zero)
    self.view.addSubview(progressions)
    progressions.setup()
    self.progressBar = progressions
    }

func scrollViewDidScroll(_ scrollView: UIScrollView) {
    if progressBar == nil {
            self.dismiss(animated: true, completion: nil)
        } else {
            progressBar.animateWidth(scrollheight: 150, scrollviewcurrent: scrollView, targetviewcontroller: self)
        }
    }
}

```
# Swipe up usage
The only difference in this use case is we have a function called swipeDownProgress which will let you know how much longer you have left until the end of the scrollView. The function itself just removes the view from the superview. The dismiss function is what I have added to show how it can be applied. 

```Swift
func scrollViewDidScroll(_ scrollView: UIScrollView) {
    if progressBar == nil {
            self.dismiss(animated: true, completion: nil)
        } else {
            progressions.swipeUpProgress(scrollviewcurrent: scrollView)
        }
    }
}
```
