//
//  ViewController.swift
//  Minha Nota Anhembi
//
//  Created by Bruno Alves da Silva on 18/06/20.
//  Copyright © 2020 Bruno Alves da Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtN2: UITextField!
    @IBOutlet weak var txtN1: UITextField!
    var resultado: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBAction func btnCalcular(_ sender: Any) {
        if let mediaN1 = Double(txtN1.text!), let mediaN2 = Double(txtN2.text!) {
            resultado = (mediaN1 * 0.4) + (mediaN2 * 0.6)
            performSegue(withIdentifier: "seguePrimeiraTela", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? primeiraTela {
            if resultado >= 6.0 {
                destination.result = String(Int(resultado))
                destination.resultSituacao = "Aprovado"
            } else {
                destination.result = String(Int(resultado))
                destination.resultSituacao = "Reprovado"
            }
        }
    }
}

