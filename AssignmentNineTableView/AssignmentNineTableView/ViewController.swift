//
//  ViewController.swift
//  AssignmentNineTableView
//
//  Created by Aruzhan Tlek on 21.02.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private lazy var cityTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(CityTableViewCell.self, forCellReuseIdentifier: CityTableViewCell.IDENTIFIER)
        tableView.backgroundColor = .clear
        tableView.showsVerticalScrollIndicator = true
        tableView.separatorStyle = .none
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        cityTableView.dataSource = self
       // cityTableView.delegate = self
        setupViews()
        setupConstraints()
    }
}
//MARK: - Table View Data Source and Delegate methods

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        DataBase.cityList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CityTableViewCell.IDENTIFIER, for: indexPath) as! CityTableViewCell
        cell.configure(with: DataBase.cityList[indexPath.row])
        cell.backgroundColor = .clear
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.size.height * 0.15
    }
    
}

//MARK: - Setup views and constraints

private extension ViewController {
    
    func setupViews() {
        view.addSubview(cityTableView)
      
    }
    func setupConstraints(){
        cityTableView.snp.makeConstraints{ make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            make.leading.trailing.equalToSuperview().inset(15)
        }
    }
}

