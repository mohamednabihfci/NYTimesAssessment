//  ArticleCellViewModel.swift
    //  NYTimesTask
    //
    //  Created by AboNabih on 1/8/21.
    //

    import Foundation
    import RxCocoa

    class ArticleCellViewModel {
        var titleTxt = BehaviorRelay<String>(value: "")
        var descriptionTxt = BehaviorRelay<String>(value: "")
        init(item: Article) {
            titleTxt.accept(item.title ?? "")
            descriptionTxt.accept(item.abstract ?? "")
        }
    }
