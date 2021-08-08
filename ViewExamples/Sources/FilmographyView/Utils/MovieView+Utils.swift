import SwiftUI


extension MovieView.Model {
    
    init(_ movie: DiscographyMovie) {
        self.init(
            title: movie.title,
            year: "\(movie.year)",
            character: movie.character,
            rating: String(format: "%.1f", movie.rating),
            ratingColor: Color(movieRating: movie.rating)
        )
    }
    
}



