
import Foundation
import RxSwift
import Reachability

class CorePresenter {
    private var subscriptions: CompositeDisposable? = nil
    
    init() {
        subscriptions = CompositeDisposable()
    }
    
    public func subscribe(disposable: Disposable) {
        
        let reachability = try! Reachability()
        
        reachability.whenReachable = { reachability in
            if reachability.connection == .wifi {
                var _ = self.subscriptions?.insert(disposable)
            } else {
                var _ = self.subscriptions?.insert(disposable)
            }
        }
        
        reachability.whenUnreachable = { _ in
            print("whenUnreachable")
        }
        do {
            try reachability.startNotifier()
        } catch {
            print("reachability.startNotifier")
            reachability.stopNotifier()
        }
    }
    
}
