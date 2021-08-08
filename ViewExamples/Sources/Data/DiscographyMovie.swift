import Foundation

struct DiscographyMovie {
    var title: String
    var year: Int
    var character: String
    var rating: Double
}


extension DiscographyMovie {
    
    enum Examples {
        
        /// Source: https://www.kinopoisk.ru/name/544406/
        static let defaultDiscography: [DiscographyMovie] = [
            DiscographyMovie(
                title: "The Devil All the Time",
                year: 2020,
                character: "Rev. Preston Teagardin",
                rating: 7.102
            ),
            DiscographyMovie(
                title: "Tenet",
                year: 2020,
                character: "Neil",
                rating: 7.564
            ),
            DiscographyMovie(
                title: "The King",
                year: 2019,
                character: "The Dauphin",
                rating: 7.109
            ),
            DiscographyMovie(
                title: "The Lighthouse",
                year: 2019,
                character: "Thomas Howard",
                rating: 7.106
            ),
            DiscographyMovie(
                title: "Waiting for the Barbarians",
                year: 2019,
                character: "Officer Mandel",
                rating: 5.951
            ),
            DiscographyMovie(
                title: "Damsel",
                year: 2018,
                character: "Samuel Alabaster",
                rating: 5.847
            ),
            DiscographyMovie(
                title: "High Life",
                year: 2018,
                character: "Monte",
                rating: 5.664
            ),
            DiscographyMovie(
                title: "Fear & Shame",
                year: 2017,
                character: "Robert Pattinson",
                rating: 6.832
            ),
            DiscographyMovie(
                title: "Good Time",
                year: 2017,
                character: "Connie Nikas",
                rating: 6.877
            ),
            DiscographyMovie(
                title: "Dior: Dior Homme Intense",
                year: 2016,
                character: "Man",
                rating: 7.875
            ),
            DiscographyMovie(
                title: "The Lost City of Z",
                year: 2016,
                character: "Henry Costin",
                rating: 6.404
            ),
            DiscographyMovie(
                title: "Life",
                year: 2015,
                character: "Dennis Stock",
                rating: 6.052
            ),
            DiscographyMovie(
                title: "The Childhood of a Leader",
                year: 2015,
                character: "Charles / The Leader",
                rating: 5.780
            ),
            DiscographyMovie(
                title: "Maps to the Stars",
                year: 2014,
                character: "Jerome Fontana",
                rating: 5.750
            ),
            DiscographyMovie(
                title: "Queen of the Desert",
                year: 2014,
                character: "T.E. Lawrence",
                rating: 5.786
            )
        ]
        
    }
    
}
