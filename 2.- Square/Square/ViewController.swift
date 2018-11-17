//
//  ViewController.swift
//  Square
//
//  Created by RCTorres on 11/16/18.
//  Copyright © 2018 RCTorres. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func alertMessage(sender: UIButton){
        let pointButton = sender
        if (pointButton.titleLabel?.text) != nil{
            let alertController = UIAlertController(title: "Prueba de Evento", message: "Holla, Aquí se usa ventana para alerta ", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
            
        }
        
    }
}

