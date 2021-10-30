import SwiftUI


struct FilmographyView: View {
    
    struct Model {
        var person: PersonView.Model
        var movies: [MovieView.Model]
    }
    
    let model: Model
    
    var body: some View {
        List {
            PersonView(model: model.person)
            ForEach(model.movies, id: \.title) { movie in
                MovieView(model: movie)
            }
        }
        .navigationTitle("Filmography")
    }
}


// MARK: - Examples

extension FilmographyView.Model {
    
    enum Examples {
        static let `default` = FilmographyView.Model(
            person: .Examples.default,
            movies: DiscographyMovie.Examples.defaultDiscography.map {
                MovieView.Model($0)
            }
        )
    }
    
}

extension FilmographyView {
    
    struct Examples: ViewExampleProvider {
        let views: [FilmographyView] = [
            FilmographyView(model: .Examples.default)
        ]
    }
    
}


// MARK: - Previews

struct FilmographyView_Previews: PreviewProvider {
    static var previews: some View {
        FilmographyView.Examples().previews(
            layouts: [.device(.iPhone12), .device(.iPad)]
        )
    }
}
