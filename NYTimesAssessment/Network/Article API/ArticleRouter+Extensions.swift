//
//  ArticleRouter+Extensions.swift
//  NYTimesTask
//
//  Created by AboNabih on 1/7/21.
//

import Moya

extension ArticleRouter: TargetType {
    var path: String {
        switch self {
        case .getPopularArticles(let period):
            return "mostpopular/v2/viewed/\(period).json"
        }
    }
    var method: Method {
        switch self {
        case .getPopularArticles:
            return .get
        }
    }
    var task: Task {
        switch self {
        case .getPopularArticles:
            let apiKey = ["api-key": Constants.APIS.APIKEY]
            return .requestParameters(parameters: apiKey, encoding: URLEncoding.default)
        }
    }
}
