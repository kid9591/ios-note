# ios-note. ([syntax](https://help.github.com/articles/basic-writing-and-formatting-syntax/))

## Collect all the techniques, tips, tricks, documentation, etc for IOS development

### 0. Apple developer account / program
* [About Cer, Provision](https://blog.theodo.fr/2017/02/a-beginners-guide-to-ios-provisioning-profiles/)
* [Choose Membership](https://developer.apple.com/support/compare-memberships/)
* [Export In-house App (like Deploygate)](https://medium.com/wso2-iot/how-to-export-in-house-developed-ios-app-as-an-enterprise-application-dc087bdd64c3)

### 1. Make app adaptive (UI for iPhone, iPad, Apple Watch, Apple TV...)

1. [Apple document](https://developer.apple.com/design/adaptivity/)
1. [Tutorial from Raywenderlich](https://www.raywenderlich.com/162311/adaptive-layout-tutorial-ios-11-getting-started)
1. [Shorter tutorial StackView from HackerNoon](https://www.raywenderlich.com/162311/adaptive-layout-tutorial-ios-11-getting-started)
1. [Demo Project](https://github.com/kid9591/ios-note/tree/master/AdaptiveExample/AdaptiveElementsImplementingYourOwnAdaptiveDesignwithUIKit)

#### Xcode tools
* `Interface Builder`
* `Asset Cataglogs`
 - Slicing (nine patch strecth image)
 - Aligment Insets (crop image)
#### UIKit functions 
* `Auto Layout`
* `UITraitCollection`
* `Dynamic Type`
* `Layout Guides`
  *  Layout margin: `UIView`'s property to recommend margin inside that `UIView`
  * Read Content size: UIView's property to recommend margin for text inside that `UIView` (define length of a text line)
* `UIAppearance`
  * Change all `TabBar`, `NavigationBar` ... appearance for all cases or for specific `TraitCollection`

#### Notes
* `viewDidLoad`: one time only happened, should init things the same
* `viewWillLayoutSubViews`: called mutiple times, when view added to superview, size, trait... are ready. Do set up for mulple screens here
* `viewWillTransition`: called when screen change size, rotation...

### 2. Asynchronous programming

#### PromiseKit
* [Github](https://github.com/mxcl/PromiseKit)
* [Tutorial from Raywenderlich](https://www.raywenderlich.com/145683/getting-started-promises-promisekit)

* Make `Promise` with `fullfil` or `reject`
* No `closure (nested closure)`, PromiseKit return `Promise` object wrapper with `then` `done` `finally` `ensure` `catch`
##### Example
Without PromiseKit

```swift
login { creds, error in
    if let creds = creds {
        fetch(avatar: creds.user) { image, error in
            if let image = image {
                self.imageView = image
            }
        }
    }
}
```

With PromiseKit
```swift
login().then { creds in
  fetch(avatar: creds.user)
}.done { image in
  self.imageView = image
}.catch { error in
  // All errors come here
}
```

### 3. Xib/Storyboard quick initialization
* [Explanation extension protocol](https://www.appcoda.com/protocols-in-swift/)
* [Demo project](https://github.com/kid9591/ios-note/tree/master/InitViewOrVCPro/GetViewOrVCLikeAPro)

### 4. Force screen orientation

``` Objective C
#pragma mark - Rotation

- (BOOL)shouldAutorotate {
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscape | UIInterfaceOrientationMaskPortrait;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.title = @"Cockpit";
    [[UIDevice currentDevice] setValue:
     [NSNumber numberWithInteger:UIInterfaceOrientationLandscapeLeft] forKey:@"orientation"];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    [[UIDevice currentDevice] setValue:
     [NSNumber numberWithInteger:UIInterfaceOrientationPortrait] forKey:@"orientation"];
}

```
