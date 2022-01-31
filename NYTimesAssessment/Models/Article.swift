//
//  Article.swift
//  NYTimesTask
//
//  Created by AboNabih on 1/7/21.
//
// MARK: - Article
struct  PopularArticles: Codable {
    let status, copyright: String?
    let numResults: Int?
    let results: [Article]?

    enum CodingKeys: String, CodingKey {
        case status, copyright
        case numResults = "num_results"
        case results
    }
}

// MARK: - Result
struct Article: Codable {
    var id: Int
    let uri: String? = nil
    let url: String? = nil
    let assetID: Int? = nil
    let source: String? = nil
    let publishedDate: String? = nil
    let updated: String? = nil
    let section: String? = nil
    let subsection: String? = nil
    let nytdsection: String? = nil
    let adxKeywords: String? = nil
    let byline: String? = nil
    let type: String? = nil
    let title: String?
    let abstract: String?
    let desFacet: [String]? = nil
    let orgFacet: [String]? = nil
    let perFacet: [String]? = nil
    let geoFacet: [String]? = nil
    let media: [Media]? = nil
    let etaID: Int? = nil

    enum CodingKeys: String, CodingKey {
        case uri, url, id
        case assetID = "asset_id"
        case source
        case publishedDate = "published_date"
        case updated, section, subsection, nytdsection
        case adxKeywords = "adx_keywords"
        case byline, type, title, abstract
        case desFacet = "des_facet"
        case orgFacet = "org_facet"
        case perFacet = "per_facet"
        case geoFacet = "geo_facet"
        case media
        case etaID = "eta_id"
    }
}

// MARK: - Media
struct Media: Codable {
    let type: String?
    let subtype: String?
    let caption, copyright: String?
    let approvedForSyndication: Int?
    let mediaMetadata: [MediaMetadatum]?

    enum CodingKeys: String, CodingKey {
        case type, subtype, caption, copyright
        case approvedForSyndication = "approved_for_syndication"
        case mediaMetadata = "media-metadata"
    }
}

// MARK: - MediaMetadatum
struct MediaMetadatum: Codable {
    let url: String?
    let format: String?
    let height, width: Int?
}
