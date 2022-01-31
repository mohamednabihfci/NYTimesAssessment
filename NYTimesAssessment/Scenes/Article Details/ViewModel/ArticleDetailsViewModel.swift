//
//  ArticleDetailsViewModel.swift
//  NYTimesTask
//
//  Created by AboNabih on 1/8/21.
//

import Foundation
import RxSwift
import RxCocoa

class ArticleDetailsViewModel {
    var titleTxt = BehaviorRelay<String>(value: "")
    var descriptionTxt = BehaviorRelay<String>(value: "")
    var article: Article? {
        didSet {
            titleTxt.accept(article?.title ?? "")
            descriptionTxt.accept(article?.abstract ?? "")
        }
    }
}
