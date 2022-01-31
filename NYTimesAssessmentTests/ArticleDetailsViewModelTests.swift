//
//  ArticleDetailsViewModelTests.swift
//  NYTimesTaskTests
//
//  Created by AboNabih on 1/8/21.
//

import XCTest
@testable import NYTimesTask

class ArticleDetailsViewModelTests: XCTestCase {

    func testIfTitleBindedWithValue() {
        let viewModel = ArticleDetailsViewModel()
        viewModel.article = Article(id: 1, title: "First Article", abstract: "Description")
        XCTAssertTrue(viewModel.titleTxt.value == viewModel.article?.title)
    }

    func testIfDescriptionBindedWithValue() {
        let viewModel = ArticleDetailsViewModel()
        viewModel.article = Article(id: 1, title: "First Article", abstract: "Description")
        XCTAssertTrue(viewModel.descriptionTxt.value == viewModel.article?.abstract)
    }
}
