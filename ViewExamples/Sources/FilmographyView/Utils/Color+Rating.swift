import SwiftUI

extension Color {
    static let goodRating = Color("good_rating")
    static let normalRating = Color("normal_rating")
    static let badRating = Color("bad_rating")
    
    init(movieRating: Double) {
        if movieRating < 5.94 {
            self = .badRating
        } else if movieRating < 7.49 {
            self = .normalRating
        } else {
            self = .goodRating
        }
    }
}
