//
//  DetailMovies.swift
//  Movies
//
//  Created by Leandro de Sousa Silva on 12/09/19.
//  Copyright © 2019 AcademyMistic. All rights reserved.
//

import UIKit

class DetailMoviesController: UIViewController {
    
    @IBOutlet weak var imageViewDetail: UIImageView!
    @IBOutlet weak var titleMovieDetail: UILabel!
    @IBOutlet weak var descriptionMovieDetail: UILabel!
    
     var moviesDetailReceived: Movies!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateMovies()
    }
    
    fileprivate func dateMovies() {
        if let moviesDetailContent = moviesDetailReceived{
            imageViewDetail.image = moviesDetailContent.imageMovie
            titleMovieDetail.text = moviesDetailContent.titleMovie
            if let description = moviesDetailReceived.descriptionMovie{
                descriptionMovieDetail.text = description
            }
        }
    }
}
