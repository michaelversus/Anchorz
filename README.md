# Anchorz

[![CI Status](https://img.shields.io/travis/Michalis Karagiorgos/Anchorz.svg?style=flat)](https://travis-ci.org/Michalis Karagiorgos/Anchorz)
[![Version](https://img.shields.io/cocoapods/v/Anchorz.svg?style=flat)](https://cocoapods.org/pods/Anchorz)
[![License](https://img.shields.io/cocoapods/l/Anchorz.svg?style=flat)](https://cocoapods.org/pods/Anchorz)
[![Platform](https://img.shields.io/cocoapods/p/Anchorz.svg?style=flat)](https://cocoapods.org/pods/Anchorz)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
* iOS 9.0+
* Swift 4.0+


## Installation

Anchorz is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Anchorz'
```
## Usage
```swift
import UIKit
import Anchorz

class ViewController: UIViewController {

    let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(redView)
        redView.constraint(
            .top(view.topAnchor, constant: 10),
            .bottom(view.bottomAnchor, constant: 10),
            .leading(view.leadingAnchor, constant: 10),
            .trailing(view.trailingAnchor, constant: 10)
        )
    }
}
```

## Author

Michalis Karagiorgos, mk@mikdev.eu

## License

Anchorz is available under the MIT license. See the LICENSE file for more info.
