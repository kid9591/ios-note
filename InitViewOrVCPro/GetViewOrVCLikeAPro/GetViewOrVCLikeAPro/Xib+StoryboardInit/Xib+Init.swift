//
//  Xib+Init.swift
//  GetViewOrVCLikeAPro
//
//  Created by Kid on 7/9/18.
//  Copyright © 2018 Kid. All rights reserved.
//

import Foundation
import UIKit

protocol XibInit:Identifier {
    
    // Associated type: Must adopt Identifier
    associatedtype Element:Identifier
    
    // Get view/view controller from xib
    static var xibInstance:Element {get}

}

extension XibInit where Element:UIViewController {
    // Get view controller
    static var xibInstance:Element {
        return Element(nibName: Element.identifier, bundle: nil)
    }
}

extension XibInit where Element:UIView {
    //Get View
    static var xibInstance:Element {
        return UINib(nibName: Element.identifier, bundle: nil).instantiate(withOwner: self, options: nil).first as! Element
    }
}


