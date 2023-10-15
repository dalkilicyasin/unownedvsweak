//
//  SecondViewControllerweak.swift
//  UnownedVsWeak
//
//  Created by Yasin Dalkilic on 11.07.2023.
//

import Foundation
import UIKit

class SecondViewControllerweak : ViewController {
    @IBOutlet weak var imageView: UIImageView!
    let imageToBeShown = "https://images.pexels.com/photos/221433/pexels-photo-221433.jpeg"

    override func viewDidLoad() {
        print("secondVc")
        self.tryNone()
    }

    func tryNone() {
            // let's get image data from server to load it in our imageview.
            self.getData(from: URL.init(string: self.imageToBeShown)!) {[weak self] (data, response, error) in

                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    self?.imageView.image = UIImage.init(data: data!)
                }
            }
    }

    func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
            URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
}
