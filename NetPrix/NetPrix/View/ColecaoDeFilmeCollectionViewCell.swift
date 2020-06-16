//
//  ColecaoDeFilmeCollectionViewCell.swift
//  NetPrix
//
//  Created by Usuario Local on 09/06/20.
//  Copyright © 2020 Everis. All rights reserved.
//

import UIKit
import AlamofireImage

class ColecaoDeFilmeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imagemDoFilme: UIImageView!
    
    let viewModel = FilmeCollectionViewViewModel()

    func configuraLayout(){
      layer.borderColor = viewModel.borderColor
      layer.borderWidth = viewModel.borderWidth
      layer.cornerRadius = viewModel.cornerRadius
      
    }
    
    func setarImagem(postPath: String){
        viewModel.setarImagem(imagem: imagemDoFilme, postParth: postPath )
    }
    
    func chamaAcessibility (filme: Filme) {
        viewModel.ativaAcessibility(filme: filme, collection: self)
    }
}
