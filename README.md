# ios-note

## Collect all the techniques, tips, tricks, documentation, etc for IOS development

1. Make app adaptive (UI for iPhone, iPad, Apple Watch, Apple TV...)
   1. [Apple document](https://developer.apple.com/design/adaptivity/)
   1. [Tutorial from Raywenderlich](https://www.raywenderlich.com/162311/adaptive-layout-tutorial-ios-11-getting-started)
   1. [Shorter tutorial StackView from HackerNoon](https://www.raywenderlich.com/162311/adaptive-layout-tutorial-ios-11-getting-started)
   
   #### Xcode tools
      * `Interface Builder `
      * `Asset Cataglogs`
         - Slicing (nine patch strecth image)
         - Aligment Insets (crop image)
   #### UIKit functions 
      * `Auto Layout`
      * `UITraitCollection`
      * `Dynamic Type`
      * `Layout Guides`
         - Layout margin: `UIView`'s property to recommend margin inside that `UIView`
         - Read Content size: UIView's property to recommend margin for text inside that `UIView` (define length of a text line)
      * `UIAppearance`
         - Change all `TabBar`, `NavigationBar` ... appearance for all cases or for specific `TraitCollection`

   #### Notes
      * `viewDidLoad`: one time only happened, should init things the same
      * `viewWillLayoutSubViews`: called mutiple times, when view added to superview, size, trait... are ready. Do set up for mulple screens here
      * `viewWillTransition`: called when screen change size, rotation...
