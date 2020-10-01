//
//  NomeViewController.swift
//  Minha Nota Anhembi
//
//  Created by Bruno Silva on 25/09/20.
//  Copyright © 2020 Bruno Alves da Silva. All rights reserved.
//

import UIKit

class NomeViewController: UIViewController {
    
    // MARK: - Atributos
    @IBOutlet weak var txtNome: UITextField!
    var nomeUser = ""
    var nomeUserD = ""
    
    // MARK: - Funções
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func salvarNome(_ sender: Any) {
        
        guard let nome = txtNome.text else { return }
        
        if nome.isEmpty == true {
            
            // create the alert
            let alerta = UIAlertController(title: "Calma ai", message: "Preciso saber seu nome 😔", preferredStyle: UIAlertController.Style.alert)
            
            // add an action (button)
            alerta.addAction(UIAlertAction(title: "Tudo bem!", style: UIAlertAction.Style.default, handler: nil))
            
            // show the alert
            self.present(alerta, animated: true, completion: nil)
            
        } else {
            
            nomeUser = nome
            
            performSegue(withIdentifier: "segueMedia", sender: nil)
//
//            let userD = UserDefaults.standard
//            userD.set(nomeUser, forKey: "nomeUser")
//
//            guard let mostrarNome = userD.object(forKey: "nomeUser") else { return }
//
//            nomeUserD = String("\(mostrarNome)")
//            print(nomeUser)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as? ViewController
        destination?.nomeUsuario = nomeUser
    }
}
