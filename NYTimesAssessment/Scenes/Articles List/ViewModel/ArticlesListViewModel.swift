//
//  ArticlesListViewModel.swift
//  NYTimesTask
//
//  Created by AboNabih on 1/8/21.
//

import Foundation
import RxSwift
import RxCocoa

class ArticlesListViewModel {
    // MARK: - Variables
    private let disposeBag = DisposeBag()
    var articleClient = ArticleClient()
    var articles = BehaviorRelay<[Article]>(value: [])
    let showLoading = BehaviorRelay<Bool>(value: false)
    // MARK: - Methods
    func loadArticles(period: String) {
        showLoading.accept(true)
        articleClient
            .fetchPopularArticles(period: period).subscribe(onNext: { [unowned self] (model) in
                self.articles.accept(model.results ?? [])
                self.showLoading.accept(false)
            }, onError: { (error) in
                self.showLoading.accept(false)
                print(error)
            }).disposed(by: disposeBag)
    }
}
