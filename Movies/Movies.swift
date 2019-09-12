import UIKit

class Movies {
    
   let titleMovie: String
   let descriptionMovie: String?
   let imageMovie: UIImage
    
    init(titleMovie: String, descriptionMovie: String?, imageMovie: UIImage) {
        self.titleMovie = titleMovie
        self.descriptionMovie = descriptionMovie
        self.imageMovie = imageMovie
    }
}

