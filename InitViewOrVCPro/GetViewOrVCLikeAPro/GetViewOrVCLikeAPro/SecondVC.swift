//
//  SecondVC.swift
//  GetViewOrVCLikeAPro
//
//  Created by Kid on 7/9/18.
//  Copyright © 2018 Kid. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

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
    @IBAction func onGo3rd(_ sender: Any) {
        let thirdVc = ThirdVC.xibInstance
        self.navigationController?.pushViewController(thirdVc, animated: true)
    }
}

extension SecondVC:StoryboardInit {
    static var storyBoard: AppStoryboard  = .Main
    typealias Element = SecondVC
}
