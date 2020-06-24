//
//  primeiraTela.swift
//  Minha Nota Anhembi
//
//  Created by Bruno Alves da Silva on 21/06/20.
//  Copyright © 2020 Bruno Alves da Silva. All rights reserved.
//

import UIKit

class primeiraTela: UIViewController {

    @IBOutlet weak var txtSituacao: UILabel!
    @IBOutlet weak var txtResultado: UILabel!
    var result: String?
    var resultSituacao: String?
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let nameToDisplay = result, let nameToDisplayS = resultSituacao {
            txtResultado.text = nameToDisplay
            txtSituacao.text = nameToDisplayS
            
            if nameToDisplayS == "Aprovado" {
                self.view.backgroundColor = UIColor.init(red: 0.102, green: 0.205, blue: 0.170, alpha: 1.00)
                image.image = UIImage(named: "smile")
            } else {
                self.view.backgroundColor = UIColor.init(red: 255.0, green: 0.00, blue: 0.00, alpha: 1.00)
                image.image = UIImage(named: "chorando")
            }
        }
    }
}
