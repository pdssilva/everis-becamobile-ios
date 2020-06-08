//
//  ViewController.swift
//  NetPrix
//
//  Created by Usuario Local on 05/06/20.
//  Copyright © 2020 Everis. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
        override func viewDidLoad() {
        super.viewDidLoad()
        getFilme()
            
        }
    func getFilme(){
        _ = FilmeAPI().getFilme(sucesso: { (json) in
            
      guard let jsonData = Filme.converteListaParaData(json) else {return}
            
      guard let listaDeFilme = Filme.decodificaFilme(jsonData) else {return}
            
            for filme in listaDeFilme{
                print(filme.posterPath)
            }
        })
    }
}






