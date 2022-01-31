//
//  ArticleClient.swift
//  NYTimesTask
//
//  Created by AboNabih on 1/7/21.
//

import Foundation
import RxSwift

class ArticleClient: APIClient<ArticleRouter> {
    func fetchPopularArticles(period: String) -> Observable<PopularArticles> {
           return Observable.create { (observer) -> Disposable in
            self.performRequest(route: .getPopularArticles(period: period), observer: observer)
               return Disposables.create()
           }.observeOn(SerialDispatchQueueScheduler(qos: .default))
       }
}
