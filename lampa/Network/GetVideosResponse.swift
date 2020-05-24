
import Foundation
import ObjectMapper

struct GetVideosResponse : Mappable {
    var page : Int?
    var total_results: Int?
    var total_pages : Int?
    var results : [VideoModel]

    init?(map: Map) {
        self.results = [VideoModel]()
    }

    mutating func mapping(map: Map) {

        page <- map["page"]
        total_results <- map["total_results"]
        total_pages <- map["total_pages"]
        results <- map["results"]
    }

}

