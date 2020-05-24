
import Foundation
import ObjectMapper

struct ErrorManager : Mappable {
    var id : String?
    var message : String?
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        
        id <- map["id"]
        message <- map["message"]
    }
    
}
