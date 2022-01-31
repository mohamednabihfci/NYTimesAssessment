//
//  NetworkManager.swift
//  NYTimesTask
//
//  Created by AboNabih on 1/7/21.
//

import RxSwift
import Moya

class APIClient<T: TargetType> {
    private let provider: MoyaProvider<T>
    init(provider: MoyaProvider<T> = MoyaProvider<T>()) {
        self.provider = provider
    }
    func performRequest<R: Codable>(route: T, observer: AnyObserver<R>) {
        self.provider.request(route) { (response) in
            switch response {
            case .success(let value):
                do {
                    let result = try value.map(R.self, atKeyPath: nil, using: JSONDecoder(), failsOnEmptyData: false)
                    observer.onNext(result)
                    observer.onCompleted()
                } catch {
                    observer.onError(error)
                }
            case .failure(let error):
                observer.onError(error)
            }
        }
    }
}
