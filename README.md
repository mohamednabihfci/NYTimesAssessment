NYTimesAssessment

* I applied the MVVM design pattern with rx data binding.
   
* I use `SwiftLint` for swift style and to be  consistent on my coding style .
 
* I applied the Coordinator patterrn for handling navigation in the app.

* I installed some dependencies:
   - `Moya/RxSwift` and `RxCocoa`: for handling network and binding the data.
   - `RxBlocking`: provides testing capabilities for Rx-based systems.

* I wrote some unit tests:
   - `testAriclesAPIRequest`: to test loading articles with mock object.
   - `testIfTitleBindedWithValue`: to test if title binding with value in article details.
   - `testIfDescriptionBindedWithValue`: to test if description binding with value in article details.
   
* I wrote  UI tests:
   - `testClickCellToShowDetails`: to test a click on a cell to show article details.
 
* To generate the coverage report:
   - Select Edit Scheme from the scheme editor menu.
   - Select the Test action.
   - Enable the Code Coverage checkbox to gather coverage data.
   - Click on  report navigator, under Test you will see Coverage then click to it you will see coverage report of app.
