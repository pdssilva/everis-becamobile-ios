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
    
        func setarImagem(_ filme:Filme) {
        
            let url = "https://image.tmdb.org/t/p/w500" + filme.posterPath
            guard let imageUrl = URL(string: url) else { return }
        imagemDoFilme.af_setImage(withURL: imageUrl)
    }
}
