//
//  TableViewController.swift
//  Test
//
//  Created by Каира on 14.03.2023.
//

import UIKit

class TableViewController: UIViewController{
    
    
    private let cellID = "cell"
    
    @IBOutlet   weak var tableView: UITableView!
    
    private  var users: [User] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        
        
        
        
//        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: cellID)
//
//        tableView.dataSource = self
//        tableView.delegate = self
        initUI()
    }
    private func initUI(){
        
        users.append(User(name: "Jane Coper", phoneNumber: "0990904066", image: "Image"))
        users.append(User(name: "Devon Lane ", phoneNumber: "7095783424", image: "Image 1"))
        users.append(User(name: "Klara Adams", phoneNumber: "77694830827", image: "mage 2"))
        users.append(User(name: "What are YouLoking", phoneNumber: "0895367261", image: "Image 3"))
        users.append(User(name: "Dont Move", phoneNumber: "880092346", image: "Image 4"))
        users.append(User(name: "Alen Delon", phoneNumber: "0554896790", image: "Image 5"))
        users.append(User(name: "Mell Gipson", phoneNumber: "09909233792", image: "Image 6"))
        users.append(User(name: "Kim Kardashiyan", phoneNumber: "0270545676", image: "Image 7"))
        users.append(User(name: "Jack London", phoneNumber: "077890564", image: "Image 8"))
        users.append(User(name: "Oleg Tinkov", phoneNumber: "880024022", image: "Image 9"))
    }
//    private func  layoutSubviews() {
//        image.layer.cornerRadius = 50 / 2
//        image.contentMode = .scaleToFill
//    }
    
    
}
    extension TableViewController: UITableViewDataSource {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            users.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
            
            cell.textLabel?.text = users[indexPath.row].name
            cell.detailTextLabel?.text = users[indexPath.row].phoneNumber
            cell.imageView?.image = UIImage(named: users[indexPath.row].image )
        
            return cell
        }
        
        
    }
    extension TableViewController: UITableViewDelegate {
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            100
        }
    }
    struct User {
        var name: String
        var phoneNumber: String
        var image: String
    }

