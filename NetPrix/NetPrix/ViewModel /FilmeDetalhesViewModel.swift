//
//  FilmeDetalhesViewModel.swift
//  NetPrix
//
//  Created by Usuario Local on 15/06/20.
//  Copyright © 2020 Everis. All rights reserved.
//

import Foundation
import AlamofireImage
import Alamofire

class FilmeDetalhesViewModel{
    
    var filme : Filme?
    
    init(filme : Filme?) {
        self.filme = filme
    }
    
    func mostrarTela(imagem:UIImageView, tituloFilme:UILabel, ratingFilme:UILabel, sinopseFilme: UILabel ){
        
        guard let filmeSelecionado = filme else {return}
        guard let popularidade = filmeSelecionado.popularity else{return}
                if filmeSelecionado.title == nil {
                tituloFilme.text = filmeSelecionado.name
            }else{
                    tituloFilme.text = filmeSelecionado.title
            }
            ratingFilme.text = ("Popularidade: \(String(popularidade))")
            if let capa = FilmeAPI().imagemDaUrl(posterPath: filmeSelecionado.posterPath){
                imagem.af_setImage(withURL: capa)
                }
                sinopseFilme.text = filmeSelecionado.overview
                }
        }


//    if let filme = filmeSelecionado{
//
//
//
//        let url = "https://image.tmdb.org/t/p/w500" + filme.posterPath
//        guard let imageUrl = URL(string: url) else { return }
//        imagemCapa.af_setImage(withURL: imageUrl)
//        self.labelTituloFilme.text = filme.title
//        self.labelSinopseFilme.text = "Sinopse: \(filme.overview)"
//        self.labelRatingFilme.text = "Popularidade: \(String(popularidade))"
//        self.imagemCapa.af_setImage(withURL: imageUrl)
//
//    }
//}

