//
//  ViewController.swift
//  Aula05
//
//  Created by Renato Marinho on 11/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func autenticar(_ sender: Any) {
        
        let email = emailTextField.text
        let password = passwordTextField.text
        
        print("O email informado é \(email) e a senha é \(password) ")
        
        let alert = UIAlertController(title: "Login", message: "Message", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Confirmar", style: .default, handler: { action in
            
            print("Cliquei no confirmar")
            
        }))
        
        alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: { cancel in
            print("Você clicou no cancelar")
        }))
        
        alert.addAction(UIAlertAction(title: "Destrutivo", style: .destructive, handler: { destrutivo in
            print("Você clicou no Destrutivo")
        }))
        
        
        present(alert, animated: true, completion: nil)
    }
    
    
}

