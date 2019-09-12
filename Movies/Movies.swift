import UIKit

class Movies {
    
   fileprivate let titleMovie: String
   fileprivate let descriptionMovie: String?
   fileprivate let imageMovie: UIImage
    
    init(titleMovie: String, descriptionMovie: String?, imageMovie: UIImage) {
        self.titleMovie = titleMovie
        self.descriptionMovie = descriptionMovie
        self.imageMovie = imageMovie
    }
    
    func getContentMovie() -> [Movies]?{
        let moviesList: [Movies]? = [movie1,movie2,movie3,movie4,movie5,movie6,movie7,movie8,movie9,movie10]
        return moviesList
    }
}

