//
//  ViewController.swift
//  NetPrix
//
//  Created by Usuario Local on 05/06/20.
//  Copyright © 2020 Everis. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UISearchBarDelegate, UICollectionViewDelegate {


    @IBOutlet weak var pesquisarFilmes: UISearchBar!
    @IBOutlet weak var colecaoDeFilmes: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getFilme()
        colecaoDeFilmes.dataSource = self
        colecaoDeFilmes.delegate = self
    }
    
    var filmes:Array<Filme> = []
    
    func getFilme(){
        _ = FilmeAPI().getFilme(sucesso: { (json) in
      guard let jsonData = Filme.converteListaParaData(json) else {return}
      guard let listaDeFilme = Filme.decodificaFilme(jsonData) else {return}
      self.filmes = listaDeFilme
      self.colecaoDeFilmes.reloadData()
        })
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filmes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celulaFilme = collectionView.dequeueReusableCell(withReuseIdentifier: "celulaFilme", for: indexPath) as! ColecaoDeFilmeCollectionViewCell
        celulaFilme.setarImagem(postPath: filmes[indexPath.item].posterPath)
        let filmeAtual = filmes[indexPath.item]

        celulaFilme.layer.borderWidth = 0.5
        celulaFilme.layer.borderColor = UIColor(red: 85.0/255.0, green: 85.0/255.0, blue: 85.0/255.0, alpha: 1).cgColor
        celulaFilme.layer.cornerRadius = 10
        
        celulaFilme.chamaAcessibility(filme: filmeAtual)
        return celulaFilme
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let larguraDaCelula = collectionView.bounds.width / 2
        return CGSize(width: larguraDaCelula - 15 , height: 160)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let filme = filmes[indexPath.item]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "detalhes") as! DetalhesFilmesViewController
        controller.filmeSelecionado = filme
        print(filme)
        self.present(controller, animated: true, completion: nil)

    }
}







