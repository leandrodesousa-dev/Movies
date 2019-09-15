//
//  MoviesListDate.swift
//  Movies
//
//  Created by Leandro de Sousa Silva on 12/09/19.
//  Copyright © 2019 AcademyMistic. All rights reserved.
//

import Foundation
import UIKit


func getContentMovie() -> [Movies]?{
    let moviesList: [Movies]? = [movie1,movie2,movie3,movie4,movie5,movie6,movie7,movie8,movie9,movie10]

    return moviesList
}

fileprivate let movie1 = Movies(titleMovie: "007 - Spectre", descriptionMovie: "ok", imageMovie: imageMovie("movie1"))
fileprivate let movie2 = Movies(titleMovie: "Star Wars", descriptionMovie: "ok", imageMovie: imageMovie("movie2"))
fileprivate let movie3 = Movies(titleMovie: "Deadly Impact", descriptionMovie: "ok", imageMovie: imageMovie("movie3"))
fileprivate let movie4 = Movies(titleMovie: "Deadpoll", descriptionMovie: nil, imageMovie: imageMovie("movie4"))
fileprivate let movie5 = Movies(titleMovie: "The Revenant", descriptionMovie: nil, imageMovie: imageMovie("movie5"))
fileprivate let movie6 = Movies(titleMovie: "A Herdeira", descriptionMovie: "ok", imageMovie: imageMovie("movie6"))
fileprivate let movie7 = Movies(titleMovie: "Point Break", descriptionMovie: "ok", imageMovie: imageMovie("movie7"))
fileprivate let movie8 = Movies(titleMovie: "Pay the Ghost", descriptionMovie: nil, imageMovie: imageMovie("movie8"))
fileprivate let movie9 = Movies(titleMovie: "Tarzan", descriptionMovie: "ok", imageMovie: imageMovie("movie9"))
fileprivate let movie10 = Movies(titleMovie: "Hardcore", descriptionMovie: "ok", imageMovie: imageMovie("movie10"))


func imageMovie(_ imageNamed: String) -> UIImage{
    if let imageVerified = UIImage(named: imageNamed) {
        return imageVerified
    }
    let returnError = UIImage(named:"movieError") as! UIImage
    
    return returnError
    
}

