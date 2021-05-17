//
//  MyTableViewCell.swift
//  ObserverApp
//
//  Created by Mohmed Master on 2021/05/11.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    static let cellIdentifier = "MyTableViewCell"
    @IBOutlet var button: UIButton!

    static func nib() -> UINib {
        return UINib(nibName: "MyTableViewCell", bundle: nil)
    }

    @IBAction func didTapButton() {

    }

    func configure(with title: String) {
        button.setTitle(title, for: .normal)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
