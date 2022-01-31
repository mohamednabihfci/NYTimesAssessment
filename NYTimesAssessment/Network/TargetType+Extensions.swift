//
//  TargetType+Extensions.swift
//  NYTimesTask
//
//  Created by AboNabih on 1/9/21.
//

import Moya

extension TargetType {
    // This is the base URL we'll be using, typically our server.
    var baseURL: URL {
        return URL(string: Constants.APIS.BASEURL)!
    }
    // These are the headers that our service requires.
    var headers: [String: String]? { nil }
    var sampleData: Data { Data() }
    var validationType: ValidationType { .successAndRedirectCodes }
}
