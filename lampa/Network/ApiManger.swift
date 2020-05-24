
import Foundation
import RxSwift
import Alamofire

class ApiManager {

    static let api: ApiManager = ApiManager()
    
    func getObservable(url: String, httpMethod: HTTPMethod, params: [String : Any] = [:], encoding: ParameterEncoding = JSONEncoding.default, headers: HTTPHeaders? = nil) -> Observable<String?> {
        return Observable.create { observer in
            AF.request(url, method: httpMethod, parameters: params, encoding: encoding, headers: headers).responseJSON { response in
                switch response.result {
                case .success:
                    if response.response == nil {
                        observer.onError(response.error!)
                    } else {
                        let json = String(data: response.data!, encoding: String.Encoding.utf8)
                        observer.on(.next(json))
                        observer.on(.completed)
                    }
                case .failure(let error):
                    observer.onError(error)
                }
            }
            return Disposables.create()
        }
    }
    
    func getPopularVideos(page: Int) -> Observable<GetVideosResponse> {
        
        var params = [:] as [String : Any]
        params["api_key"] = "f910e2224b142497cc05444043cc8aa4"
        params["page"] = page
        
        
        return getObservable(url: Api.GetPopularMovies.url, httpMethod: .get, params: params, encoding: URLEncoding.queryString)
        .map {
                json in
                return (GetVideosResponse(JSONString: json!))!
        }
    }
    
    func getTopRatedVideos(page: Int) -> Observable<GetVideosResponse> {
        
        var params = [:] as [String : Any]
        params["api_key"] = "f910e2224b142497cc05444043cc8aa4"
        params["page"] = page
        
        
        return getObservable(url: Api.GetTopRatedMovies.url, httpMethod: .get, params: params, encoding: URLEncoding.queryString)
        .map {
                json in
                return (GetVideosResponse(JSONString: json!))!
        }
    }
}
