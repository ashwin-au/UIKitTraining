//
//  StudentTableViewController.swift
//  SwiftUIKitTraining
//
//  Created by Ashwin A U on 12/05/23.
//

import UIKit

class StudentTableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var data = [
        StudentModel(name: "Amal", address: "abcdscdf fvwf fevwe e", image: "person.fill"),
        StudentModel(name: "Nithin", address: "abcdscdf fvwf fevwe e", image: "person.fill"),
        StudentModel(name: "Surya", address: "abcdscdf fvwf fevwe e", image: "person.fill"),
        StudentModel(name: "Jayaram", address: "abcdscdf fvwf fevwe e", image: "person.fill"),
        StudentModel(name: "Reon", address: "abcdscdf fvwf fevwe e", image: "person.fill"),
        StudentModel(name: "Ramees", address: "abcdscdf fvwf fevwe e", image: "person.fill"),
        StudentModel(name: "Devi", address: "abcdscdf fvwf fevwe e", image: "person.fill"),
        StudentModel(name: "Midhun", address: "abcdscdf fvwf fevwe e", image: "person.fill"),
        StudentModel(name: "Kiran", address: "abcdscdf fvwf fevwe e", image: "person.fill")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "StudentCell", bundle: nil), forCellReuseIdentifier: "studentCell")
        self.navigationItem.title = "Student List"
    }
}

// MARK: - Table View Delegates

extension StudentTableViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "studentCell") as? studentCell else { return UITableViewCell() }
        cell.studentIcon.image = UIImage(systemName: data[indexPath.row].image)
        cell.name.text = data[indexPath.row].name
        cell.address.text = data[indexPath.row].address
       return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Student"
    }
    
}

// MARK: - Model
struct StudentModel: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var address: String
    var image: String
}


