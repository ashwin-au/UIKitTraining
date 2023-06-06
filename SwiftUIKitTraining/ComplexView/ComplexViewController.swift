//
//  ComplexViewController.swift
//  SwiftUIKitTraining
//
//  Created by Ashwin A U on 26/05/23.
//

import UIKit

class ComplexViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: CollectionViewTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: CollectionViewTableViewCell.identifier)
        tableView.register(UINib(nibName: ProfileCardTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: ProfileCardTableViewCell.identifier)
        tableView.register(UINib(nibName: "StudentCell", bundle: nil), forCellReuseIdentifier: "studentCell")
    }
}

// MARK: - Extensions

extension ComplexViewController: UITableViewDelegate {
}

extension ComplexViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ProfileCardTableViewCell.identifier, for: indexPath) as? ProfileCardTableViewCell else { return UITableViewCell() }
            cell.setData(image: "car", name: "Don", designation: "iOS Developer")
            return cell

        case 2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: CollectionViewTableViewCell.identifier, for: indexPath) as? CollectionViewTableViewCell else { return UITableViewCell() }
            return cell
            
        case 3:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "studentCell") as? studentCell else { return UITableViewCell() }
            cell.studentIcon.image = UIImage(systemName: "bolt.car")
            cell.name.text = "Dummy name"
            cell.address.text = "Dummy address"
           return cell

        default:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ProfileCardTableViewCell.identifier, for: indexPath) as? ProfileCardTableViewCell else { return UITableViewCell() }
            cell.setData(image: "person", name: "Dummy Name", designation: "Dummy Designation")
            return cell
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 2:
            return 250
        default:
            return UITableView.automaticDimension
        }
    }
}
