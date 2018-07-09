//
//  Storyboard+Init.swift
//  GetViewOrVCLikeAPro
//
//  Created by Kid on 7/9/18.
//  Copyright © 2018 Kid. All rights reserved.
//

import Foundation
import UIKit

protocol StoryboardInit:Identifier {
    // Associated type: Must adopt Identifier
    associatedtype Element: Identifier
    
    static var storyBoard : AppStoryboard {get set}
    
    // Get view controller from storyboard
    static var storyboardViewController: Element {get}
}

                         // Condition: element must be viewcontroller
extension StoryboardInit where Element:UIViewController {
    //default value for storyboardViewController
    static var storyboardViewController: Element {
        return storyBoard.instance.instantiateViewController(withIdentifier: Element.identifier) as! Element
    }
}

enum AppStoryboard: String {
    // All storyboard should be listed here
    case Main = "Main"
    
    var instance :UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: nil)
    }
}
