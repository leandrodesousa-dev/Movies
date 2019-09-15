//
//  ViewController.swift
//  Movies
//
//  Created by Leandro de Sousa Silva on 12/09/19.
//  Copyright © 2019 AcademyMistic. All rights reserved.
//

import UIKit

class MoviesListContentController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    fileprivate let cellId = "cellId"
    fileprivate let moviesArray = getContentMovie()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let moviesVerified = moviesArray{
            return moviesVerified.count
        } else {
            print("Error numbers of Rows")
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! MoviesListCellController
       
        contentCellMovies(indexPath, cell)
       
        return cell 
    }
    
    // MARK: Prepare Destination Controller
    //faz a transferencia de dados entre as views controllers
    //lembrar de colocar o identificer no storyboard na segue
    //tudo  verificado, sem erro
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let segueId = segue.identifier
        if let segueIdVerified = segueId{
            if segueIdVerified == "DetailMovies"{
                let tableViewIndex = tableView.indexPathForSelectedRow
                if let tableIndexSelected = tableViewIndex{
                    let destinationDetailMoviel = segue.destination as! DetailMoviesController
                    let destiantionController = destinationDetailMoviel
                    if let movies = moviesArray{
                        destiantionController.moviesDetailReceived = movies[tableIndexSelected.row]
                    }
                }
            }
        }
    }
    
    fileprivate func contentCellMovies(_ indexPath: IndexPath, _ cell: MoviesListCellController) {
        if let moviesVerified = moviesArray{
            let moviesContent = moviesVerified[indexPath.row]
            cell.titleMovie.text = moviesContent.titleMovie
            cell.descriptionMovie.text = moviesContent.descriptionMovie
            cell.imageMovie.image = moviesContent.imageMovie
            cell.imageMovie.layer.masksToBounds = true
            cell.imageMovie.layer.cornerRadius = 52
            
        }
    }

}
