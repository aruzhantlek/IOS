//
//  MyTableViewCell.swift
//  ApplicationTable
//
//  Created by Aruzhan Tlek on 14.02.2023.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    static let IDENTIFIER = "MyTableViewCell"
    
    private lazy var myText: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        label.text = "test"
        return label
    }()
    
    private lazy var myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "trash.fill")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        setupConstraints()
    }
    required init?(coder:NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setText(string: String){
        myText.text = string
    }
    
}
//MARK: - Setup views and constraints

private extension MyTableViewCell {
    
    func setupViews(){
        contentView.addSubview(myText)
        contentView.addSubview(myImageView)
        
    }
    func setupConstraints(){
        myText.snp.makeConstraints{ make in
            make.top.leading.bottom.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.7)
        }
        myImageView.snp.makeConstraints{ make in
            make.top.trailing.bottom.equalToSuperview()
            make.leading.equalTo(myText.snp.trailing)
        }
        
    }
    
}
