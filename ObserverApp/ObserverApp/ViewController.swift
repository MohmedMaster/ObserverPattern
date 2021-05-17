//
//  ViewController.swift
//  ObserverApp
//
//  Created by Mohmed Master on 2021/05/10.
//

import UIKit

class BaseViewController: UITableViewController{

    @IBOutlet weak var table: UITableView!
    let data = ["Blue", "Red"]

    lazy var blueViewController: BlueViewController = {
        return storyboard?.instantiateViewController(withIdentifier: "BlueViewController") as! BlueViewController
    }()

    lazy var redViewController: RedViewController = {
        return storyboard?.instantiateViewController(withIdentifier: "RedViewController") as! RedViewController
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        redViewController.createObservers()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        if indexPath.row == 0 {
            navigationController?.pushViewController(blueViewController, animated: true)
        } else {
            navigationController?.pushViewController(redViewController, animated: true)

        }
    }
}

class Singleton {

    let blueNotificationKey = Notification.Name(rawValue: "blueNotification")
    static let shared = Singleton()
}
