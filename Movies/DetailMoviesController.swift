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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    let moviesList = getContentMovie()
    
//   fileprivate func movieViewDetail(){
//    let indexPath = 
//        if let MovieVerified = moviesList {
//          let movieContent = MovieVerified[indexPath.row]
//           imageViewDetail.image = movieContent.imageMovie
//        titleMovieDetail.text = movieContent.titleMovie
//            descriptionMovieDetail.text = movieContent.descriptionMovie
//        }
//    }
    
    func movieIndex(ofRow indexPath: IndexPath) -> IndexPath{
        let indexPath = indexPath
        return indexPath
    }
    
}
