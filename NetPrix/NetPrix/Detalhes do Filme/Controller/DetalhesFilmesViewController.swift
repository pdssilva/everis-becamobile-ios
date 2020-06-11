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
    
        if let filme = filmeSelecionado{
 
            
            guard let popularidade = filme.popularity else{return}
            let url = "https://image.tmdb.org/t/p/w500" + filme.posterPath
            guard let imageUrl = URL(string: url) else { return }
            imagemCapa.af_setImage(withURL: imageUrl)
            self.labelTituloFilme.text = filme.title
            self.labelSinopseFilme.text = "Sinopse: \(filme.overview)"
            self.labelRatingFilme.text = "Popularidade: \(String(popularidade))"
            self.imagemCapa.af_setImage(withURL: imageUrl)
            
        }
    }
    
    @IBAction func botaoVoltar(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
