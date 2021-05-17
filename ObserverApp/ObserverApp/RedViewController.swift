//
//  RedViewController.swift
//  ObserverApp
//
//  Created by Mohmed Master on 2021/05/11.
//

import UIKit

class RedViewController: UIViewController{

    @IBOutlet weak var manchesterImage: UIImageView!
    @IBOutlet weak var manchesterLabel: UILabel!
    let blue = Notification.Name(rawValue: "blueNotification")

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func createObservers(){
        NotificationCenter.default.addObserver(self, selector: #selector(updateRedScreen(notification:)), name: blue, object: nil)
    }

    @objc func updateRedScreen(notification: NSNotification) {
        view.backgroundColor = .blue
        manchesterLabel.text = "London Is Blue!!!"
        manchesterImage.image = #imageLiteral(resourceName: "Chelsea")
    }
}
