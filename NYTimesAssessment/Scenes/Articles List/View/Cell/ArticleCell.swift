//
//  ArticleCell.swift
//  NYTimesTask
//
//  Created by AboNabih on 1/8/21.
//

import UIKit
import RxSwift

class ArticleCell: UITableViewCell {
    // MARK: - Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    // MARK: - Variables
    private let disposeBag = DisposeBag()
    var viewModel: ArticleCellViewModel? {
        didSet {
            guard let model = viewModel else {
                return
            }
            model.titleTxt.bind(to: titleLabel.rx.text).disposed(by: disposeBag)
            model.descriptionTxt.bind(to: descriptionLabel.rx.text).disposed(by: disposeBag)
        }
    }
    // MARK: - Method
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
extension ArticleCell {
    func bind(_ model: ArticleCellViewModel) {
        self.viewModel = model
    }
}
