//
//  ViewController.swift
//  ProyectoFinal
//
//  Created by Jorge Ismael Vera Huerta on 07/06/22.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtCorreo: UITextField!
    @IBOutlet weak var txtContra: UITextField!
    
    @IBAction func btnGuardarUsueario(_ sender: UIButton) {
        
        Auth.auth().createUser(withEmail: txtCorreo.text!, password: txtContra.text!) { authResult, error in
        }
        
        print("Lo que trae Usuario:", self.txtCorreo.text!)
        print("Lo que trae cobtra:", self.txtContra.text!)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

