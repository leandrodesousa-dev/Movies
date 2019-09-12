//
//  MoviesListDate.swift
//  Movies
//
//  Created by Leandro de Sousa Silva on 12/09/19.
//  Copyright © 2019 AcademyMistic. All rights reserved.
//

import Foundation
import UIKit

let movie1 = Movies(titleMovie: "007 - Spectre", descriptionMovie: "ok", imageMovie: imageMovie("movie1"))
let movie2 = Movies(titleMovie: "Star Wars", descriptionMovie: "ok", imageMovie: imageMovie("movie2"))
let movie3 = Movies(titleMovie: "Deadly Impact", descriptionMovie: "ok", imageMovie: imageMovie("movie3"))
let movie4 = Movies(titleMovie: "Deadpoll", descriptionMovie: nil, imageMovie: imageMovie("movie4"))
let movie5 = Movies(titleMovie: "The Revenant", descriptionMovie: nil, imageMovie: imageMovie("movie5"))
let movie6 = Movies(titleMovie: "A Herdeira", descriptionMovie: "ok", imageMovie: imageMovie("movie6"))
let movie7 = Movies(titleMovie: "Point Break", descriptionMovie: "ok", imageMovie: imageMovie("movie7"))
let movie8 = Movies(titleMovie: "Pay the Ghost", descriptionMovie: nil, imageMovie: imageMovie("movie8"))
let movie9 = Movies(titleMovie: "Tarzan", descriptionMovie: "ok", imageMovie: imageMovie("movie9"))
let movie10 = Movies(titleMovie: "Hardcore", descriptionMovie: "ok", imageMovie: imageMovie("movie10"))


func imageMovie(_ imageNamed: String) -> UIImage{
    if let imageVerified = UIImage(named: imageNamed) {
        return imageVerified
    }
    let returnError = UIImage(named:"movieError") as! UIImage
    
    return returnError
    
}

