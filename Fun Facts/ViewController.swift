//
//  ViewController.swift
//  Fun Facts
//
//  Created by Shotaro Hariu on 4/29/16.
//  Copyright © 2016 Shotaro Hariu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    let factModel = FactModel()
    
    @IBOutlet weak var funFactButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       funFactLabel.text = factModel.facts[0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        let newColor = colorModel().getRandomColor()
        view.backgroundColor = newColor
        funFactButton.tintColor = newColor
        funFactLabel.text = factModel.getRandomFact()
    }

}

