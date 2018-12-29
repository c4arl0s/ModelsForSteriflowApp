//
//  ViewController.swift
//  ModelsForSteriflowApp
//
//  Created by Carlos Santiago Cruz on 12/28/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let productOne = Product(name: .mk978Inline, image: nil, model: nil)
        print(productOne.clasification)
        print(productOne.description)
        let productTwo = Product(name: .mk978JD, image: nil, model: nil)
        print(productTwo.clasification)
    }
}

