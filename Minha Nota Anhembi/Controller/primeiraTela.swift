//
//  primeiraTela.swift
//  Minha Nota Anhembi
//
//  Created by Bruno Alves da Silva on 21/06/20.
//  Copyright © 2020 Bruno Alves da Silva. All rights reserved.
//

import UIKit

class primeiraTela: UIViewController {
    
    // MARK: - Variaveis
    @IBOutlet weak var txtSituacao: UILabel!
    @IBOutlet weak var txtResultado: UILabel!
    var result: String?
    var resultSituacao: String?
    @IBOutlet weak var image: UIImageView!
    
    // MARK: - Processamento
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let resultado = result, let situacaoAluno = resultSituacao {
            txtResultado.text = resultado
            txtSituacao.text = situacaoAluno
            
            if situacaoAluno == "Aprovado" {
                self.view.backgroundColor = UIColor.init(red: 0.1922, green: 0.5725, blue: 0.5255, alpha: 1.00)
                image.image = UIImage(named: "smile")
            } else {
                self.view.backgroundColor = UIColor.init(red: 1.00, green: 0.25, blue: 0.30, alpha: 1.00)
                image.image = UIImage(named: "chorando")
            }
        }
    }
}
