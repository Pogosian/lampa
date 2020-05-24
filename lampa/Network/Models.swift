
import Foundation
import ObjectMapper

struct VideoModel : Mappable {
    
    var popularity: Double = 0
    var vote_count = 0
    var video = false
    var poster_path = ""
    var id = 0
    var adult = false
    var backdrop_path = ""
    var original_language = ""
    var original_title = ""
    var genre_ids = [Int]()
    var title = ""
    var vote_average: Double = 0
    var overview = ""
    var release_date = ""

    init?(map: Map) {
    }
    
    init() {
    }
    
    init(id: Int, popularity: Double, vote_count: Int, video: Bool, poster_path: String, adult: Bool, backdrop_path: String, original_language: String, original_title: String, genre_ids: [Int], title: String, vote_average: Double, overview: String, release_date: String) {
        self.id = id
        self.popularity = popularity
        self.vote_count = vote_count
        self.video = video
        self.poster_path = poster_path
        self.adult = adult
        self.backdrop_path = backdrop_path
        self.original_language = original_language
        self.original_title = original_title
        self.genre_ids = genre_ids
        self.title = title
        self.vote_average = vote_average
        self.overview = overview
        self.release_date = release_date
    }

    mutating func mapping(map: Map) {

        id <- map["id"]
        popularity <- map["popularity"]
        vote_count <- map["vote_count"]
        video <- map["video"]
        poster_path <- map["poster_path"]
        adult <- map["adult"]
        backdrop_path <- map["backdrop_path"]
        original_language <- map["original_language"]
        original_title <- map["original_title"]
        genre_ids <- map["genre_ids"]
        title <- map["title"]
        vote_average <- map["vote_average"]
        overview <- map["overview"]
        release_date <- map["release_date"]
    }
}
