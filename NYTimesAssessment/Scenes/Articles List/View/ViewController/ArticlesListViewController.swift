//
//  ArticlesListViewController.swift
//  NYTimesTask
//
//  Created by AboNabih on 1/7/21.
//

import UIKit
import RxSwift

class ArticlesListViewController: UIViewController, Storyboarded {
    // MARK: - Variables
    let viewModel = ArticlesListViewModel()
    let disposeBag = DisposeBag()
    weak var coordinator: MainCoordinator?
    // MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    // MARK: - View lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAppearance()
        resgisteringNibfiles()
        setupRxBindings()
        viewModel.loadArticles(period: "7")
    }
}
extension ArticlesListViewController {
    // MARK: - Methods
    func setupAppearance() {
        self.title = "Articles"
        tableView.tableFooterView = UIView()
        self.tableView.estimatedRowHeight = 77.0
        self.tableView.rowHeight = UITableView.automaticDimension
        tableView.accessibilityIdentifier = "TableView--Articles"
    }
    func resgisteringNibfiles() {
        tableView.registerNib(cell: ArticleCell.self)
    }
    func setupRxBindings() {
        viewModel.showLoading.observeOn(MainScheduler.instance)
            .bind(to: activityIndicator.rx.isAnimating)
            .disposed(by: disposeBag)
        viewModel.articles
            .bind(to: tableView.rx.items(cellIdentifier: "ArticleCell",
                                         cellType: ArticleCell.self)) { (row, element, cell) in
                cell.bind(ArticleCellViewModel(item: element))
                cell.accessibilityIdentifier = "cell_\(row)"
            }
            .disposed(by: disposeBag)
        tableView.rx.modelSelected(Article.self)
            .subscribe(onNext: { [weak self] (model) in
                self?.coordinator?.showArticleDetails(article: model)
            }).disposed(by: disposeBag)
    }
}
