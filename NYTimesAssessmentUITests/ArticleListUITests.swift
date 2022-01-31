//
//  ArticleListUITests.swift
//  NYTimesTaskUITests
//
//  Created by AboNabih on 1/9/21.
//

import XCTest
@testable import NYTimesTask

class ArticleListUITests: XCTestCase {
    let app = XCUIApplication()
    override func setUp() {
        super.setUp()
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        app.launch()
    }

    func testClickCellToShowDetails() {
        let myTable = app.tables.matching(identifier: "TableView--Articles")
           let cell = myTable.cells.element(matching: .cell, identifier: "cell_0")
           cell.tap()
        XCTAssertNotNil(app.staticTexts["titleLabl"].label, "Title not binded with value")
    }
}
