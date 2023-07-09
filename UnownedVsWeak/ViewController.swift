//
//  ViewController.swift
//  UnownedVsWeak
//
//  Created by Yasin Dalkilic on 9.07.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func toSecondVC(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "nextView") as! SecondViewController
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
}

