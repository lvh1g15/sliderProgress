# SliderProgress

[![Version](https://img.shields.io/cocoapods/v/SliderProgress.svg?style=flat)](http://cocoapods.org/pods/SliderProgress)
<img src="https://img.shields.io/badge/platform-iOS-orange.svg?style=flat" alt="Platform iOS" />
<img src="https://img.shields.io/badge/license-MIT-green.svg?style=flat" alt="License MIT" />

<p align="center">
  <img src="https://media.giphy.com/media/3otWpI6WTCtjNNusKI/giphy.gif">
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

## Example usage
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

