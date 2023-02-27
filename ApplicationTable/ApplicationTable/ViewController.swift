//
//  ViewController.swift
//  ApplicationTable
//
//  Created by Aruzhan Tlek on 14.02.2023.
//

import UIKit
import SnapKit

//final - when we don't want our class to inherit
final class ViewController: UIViewController {
    
    private let myItems: [[String]] = [["Product1.1", "Product1.2", "Product1.3"],["Product2.1", "Product2.2"], ["Product3.1", "Product3.2", "Product3.3"]]
    private let myTitle: [String] = ["Title", "Title", "Title"]
    
    private lazy var myTableView: UITableView = {
       let tableView = UITableView()
        tableView.register(MyTableViewCell.self, forCellReuseIdentifier: MyTableViewCell.IDENTIFIER)
        tableView.backgroundColor = .white
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        myTableView.dataSource = self
        myTableView.delegate = self
        
        setupViews()
        setupConstraints()
    }
}

//MARK: - Table View data source methods

extension ViewController: UITableViewDataSource {
    //кол-во секции
    func numberOfSections(in tableView: UITableView) -> Int {
        myTitle.count
    }
    //титулька для секции
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Title \(section)"
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myItems[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = MyTableViewCell (same with next method)
        let cell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.IDENTIFIER, for: indexPath) as! MyTableViewCell
        //cell.setText(string: myItems[indexPath.section][indexPath.row])
        cell.setText(string: "Product \(indexPath.section).\(indexPath.row)")
        cell.backgroundColor = .clear
        return cell
    }
}

extension UIViewController: UITableViewDelegate {
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}

//MARK: - Setup views and constraints

private extension ViewController {
    
    func setupViews() {
        view.addSubview(myTableView)
    }
    func setupConstraints(){
        myTableView.snp.makeConstraints{ make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.leading.trailing.equalToSuperview().inset(15)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
    }
}
//protocol UITableView
