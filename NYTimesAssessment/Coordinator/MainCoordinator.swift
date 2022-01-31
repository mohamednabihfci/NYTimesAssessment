//
//  MainCoordinator.swift
//  NYTimesTask
//
//  Created by AboNabih on 1/9/21.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let articlesListVC = ArticlesListViewController.instantiate(storyboardName: Constants.StoryBoardIDs.ArticleListScene)
        articlesListVC.coordinator = self
        navigationController.pushViewController(articlesListVC, animated: true)
    }
    func showArticleDetails(article: Article) {
        let articlesDetailsVC = ArticleDetailsViewController.instantiate(storyboardName: Constants.StoryBoardIDs.ArticleDetailsScene)
        articlesDetailsVC.coordinator = self
        articlesDetailsVC.viewModel.article = article
        navigationController.pushViewController(articlesDetailsVC, animated: true)
    }
}
