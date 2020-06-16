//
//  FilmeCollectionViewViewModel.swift
//  NetPrix
//
//  Created by Usuario Local on 16/06/20.
//  Copyright © 2020 Everis. All rights reserved.
//

import Foundation
import UIKit
import Alamofire

class FilmeCollectionViewViewModel: UICollectionViewCell{
    
    let borderWidth : CGFloat =  0.5
    let borderColor = UIColor(red: 85.0/255.0, green: 85.0/255.0, blue: 85.0/255.0, alpha: 1).cgColor
    let cornerRadius:  CGFloat = 10
    
    
    func setarImagem(imagem: UIImageView, postParth: String ) {
        
        if let url = FilmeAPI().imagemDaUrl(posterPath: postParth){
        imagem.af_setImage(withURL: url)
            
        }
    }
    
    func ativaAcessibility (filme: Filme, collection: ColecaoDeFilmeCollectionViewCell) {
        if filme.title == nil {
           collection.imagemDoFilme.accessibilityLabel = filme.name
        }else{
           collection.imagemDoFilme.accessibilityLabel = filme.title
        }
    }
}

