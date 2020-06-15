//
//  FilmeAPI.swift
//  NetPrix
//
//  Created by Usuario Local on 07/06/20.
//  Copyright © 2020 Everis. All rights reserved.
//

import Foundation
import Alamofire

//chamando URL
class FilmeAPI: Codable{
    
    //metodo para pegar a requisicao
    
    func getFilme(sucesso:@escaping(_ jsonFilmes: [[String:Any]]) -> Void) {

        Alamofire.request("https://api.themoviedb.org/3/trending/all/week?api_key=a4322ac7a47db842bcb32db83a2a3254&language=pt-BR", method: .get).responseJSON{(response) in
            switch response.result {
            case .success:
                guard let resposta = (response.result.value as? [String:Any]) else {return}
                guard let respostaListaFilmes = resposta["results"] as? [[String:Any]] else {return}
                sucesso(respostaListaFilmes)
                print(sucesso)
                break
            case .failure:
                print(response.error!)
                break
            }
        }
    }
    
    func imagemDaUrl(posterPath: String) -> URL? {
        
        let url = "https://image.tmdb.org/t/p/w500" + posterPath
        guard let imageUrl = URL(string: url) else { return nil}
        
        return imageUrl
    }
}




