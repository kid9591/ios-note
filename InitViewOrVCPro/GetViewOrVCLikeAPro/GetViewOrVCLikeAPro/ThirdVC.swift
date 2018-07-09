//
//  ThirdVC.swift
//  GetViewOrVCLikeAPro
//
//  Created by Kid on 7/9/18.
//  Copyright © 2018 Kid. All rights reserved.
//

import UIKit

class ThirdVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func onAddCustomView(_ sender: Any) {
        let customView = CustomView.xibInstance
        customView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(customView)
        
        customView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 64).isActive = true
        customView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        customView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        customView.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
}

extension ThirdVC:XibInit {
    typealias Element = ThirdVC
}
