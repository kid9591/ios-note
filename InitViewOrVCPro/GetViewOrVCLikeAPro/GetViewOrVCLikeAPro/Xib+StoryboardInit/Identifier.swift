//
//  Identifier.swift
//  GetViewOrVCLikeAPro
//
//  Created by Kid on 7/9/18.
//  Copyright © 2018 Kid. All rights reserved.
//

import Foundation
import UIKit

protocol Identifier {
    static var identifier:String {get}
}

extension Identifier {
    //provide default value for identifier
    static var identifier:String {
        return String(describing: self)
    }
}

// Conform automatically (auto set identifier = class name)
extension UIView :Identifier {}
extension UIViewController: Identifier {}
