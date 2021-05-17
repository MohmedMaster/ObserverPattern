//
//  BlueViewController.swift
//  ObserverApp
//
//  Created by Mohmed Master on 2021/05/11.
//

import UIKit

class BlueViewController: UIViewController{

    @IBOutlet weak var chelseaImage: UIImageView!
    @IBOutlet weak var chelseaLabel: UILabel!
    @IBOutlet weak var observeButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func observeScreen(_ sender: Any) {
        NotificationCenter.default.post(name: Singleton.shared.blueNotificationKey, object: nil)
    }
}
