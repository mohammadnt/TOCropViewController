//
//  ViewController.swift
//  TOCropViewControllerExample
//
//  Created by zigzag on 26/4/2022.
//

import UIKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onBtn(_ sender: Any) {
        ImagePickerManager().pickImage(self){ image in
            let k = TOCropViewController.init(croppingStyle: TOCropViewCroppingStyle.circular, image: image, showCaption: true)
//            k.delegate = self
            self.present(k, animated: false, completion: nil)
        }
    }
    
}

