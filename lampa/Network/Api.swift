
import Foundation

public class Api: NSObject {
    
    public static let currentServerHost = "https://api.themoviedb.org/3"
    
    struct GetTopRatedMovies {
        static var url: String {
            get {
                return currentServerHost + "/movie/top_rated"
            }
        }
    }
    
    struct GetPopularMovies {
        static var url: String {
            get {
                return currentServerHost + "/movie/popular"
            }
        }
    }

    
}
