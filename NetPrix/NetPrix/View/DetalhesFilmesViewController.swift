//
//  DetalhesFilmesViewController.swift
//  NetPrix
//
//  Created by Usuario Local on 09/06/20.
//  Copyright © 2020 Everis. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class DetalhesFilmesViewController: UIViewController {

    
    @IBOutlet weak var imagemCapa: UIImageView!
    @IBOutlet weak var labelTituloFilme: UILabel!
    @IBOutlet weak var labelRatingFilme: UILabel!
    @IBOutlet weak var labelSinopseFilme: UILabel!
    
    var filmeSelecionado:Filme? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mostrarTela()
        }
    
    func mostrarTela(){
        FilmeDetalhesViewModel(filme: filmeSelecionado).mostrarTela(imagem: imagemCapa, tituloFilme: labelTituloFilme, ratingFilme: labelRatingFilme, sinopseFilme: labelSinopseFilme)
    
    }

    @IBAction func botaoVoltar(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
