//
//  ViewController.swift
//  Minha Nota Anhembi
//
//  Created by Bruno Alves da Silva on 18/06/20.
//  Copyright © 2020 Bruno Alves da Silva. All rights reserved.
//

import UIKit
import Foundation

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
        if let mediaN1 = txtN1.text, let mediaN2 = txtN2.text {
            
            let numberFormatter = NumberFormatter()
            numberFormatter.decimalSeparator = ","
            
            if let n1 = numberFormatter.number(from: mediaN1), let n2 = numberFormatter.number(from: mediaN2) {
                let valorn1 = Double(n1)
                let valorn2 = Double(n2)
                resultado = (valorn1 * 0.4) + (valorn2 * 0.6)
                performSegue(withIdentifier: "seguePrimeiraTela", sender: nil)
                
            } else {
                
                print("Não foi possivel receber os valores n1 ou n2")
            }
            
        } else {
            
            print("Não foi possivel receber os valores mediaN2 ou mediaN2")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? primeiraTela {
            if resultado >= 6.0 {
                destination.result = String(resultado)
                destination.resultSituacao = "Aprovado"
            } else {
                destination.result = String(Int(resultado))
                destination.resultSituacao = "Reprovado"
            }
        }
    }
}

