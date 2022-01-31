//
//  ArticleDetailsViewController.swift
//  NYTimesTask
//
//  Created by AboNabih on 1/8/21.
//

import UIKit
import RxSwift

class ArticleDetailsViewController: UIViewController, Storyboarded {
    // MARK: - Variables
    let viewModel = ArticleDetailsViewModel()
    private let disposeBag = DisposeBag()
    weak var coordinator: MainCoordinator?
    // MARK: - Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    // MARK: - View lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupRxBindings()
    }
    // MARK: - Methods
    func setupRxBindings() {
        viewModel.titleTxt.bind(to: titleLabel.rx.text).disposed(by: disposeBag)
        viewModel.descriptionTxt.bind(to: descriptionLabel.rx.text).disposed(by: disposeBag)
    }
}
