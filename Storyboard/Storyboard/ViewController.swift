//
//  ViewController.swift
//  Storyboard
//
//  Created by user222137 on 9/26/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonOutlet: UIButton!
    
    @IBOutlet weak var textFieldOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var buttonMostrarTexto: UIButton!
    
    @IBAction func buttonClicked(_ sender: Any) {
        print(textFieldOutlet.text ?? "")
    }
}

