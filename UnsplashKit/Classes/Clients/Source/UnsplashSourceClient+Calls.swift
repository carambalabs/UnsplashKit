import Foundation
import RxSwift
import SwiftyJSON

extension UnsplashSourceClient {

    public func randomPhoto(size: CGSize? = nil, filter: SourceRequestFilter? = .None) -> Observable<UIImage> {
        return self.request(self.requestFactory.random(size, filter: filter)).map { $0.0 }
    }

    public func randomPhoto(fromSearch terms: [String], size: CGSize? = nil, filter: SourceRequestFilter? = .None) -> Observable<UIImage> {
        return self.request(self.requestFactory.search(terms, size: size, filter: filter)).map { $0.0 }
    }

    public func randomPhoto(fromCategory category: SourceCategory, size: CGSize? = nil, filter: SourceRequestFilter? = .None) -> Observable<UIImage> {
        return self.request(self.requestFactory.category(category, size: size, filter: filter)).map { $0.0 }
    }
 
    public func randomPhoto(fromUser userID: String, size: CGSize? = nil, filter: SourceRequestFilter? = .None) -> Observable<UIImage> {
        return self.request(self.requestFactory.user(userID, size: size, filter: filter)).map { $0.0 }
    }
    
    public func randomPhoto(fromUserLikes userID: String, size: CGSize? = nil) -> Observable<UIImage> {
        return self.request(self.requestFactory.userLikes(userID, size: size)).map { $0.0 }
    }

    public func randomPhoto(fromCollection collectionID: String, size: CGSize? = nil) -> Observable<UIImage> {
        return self.request(self.requestFactory.collection(collectionID, size: size)).map { $0.0 }
    }

    public func photo(id: String, size: CGSize? = nil) -> Observable<UIImage> {
        return self.request(self.requestFactory.photo(id, size: size)).map { $0.0 }
    }
    
}