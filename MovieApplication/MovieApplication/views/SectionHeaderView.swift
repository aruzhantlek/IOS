//
//  SectionHeaderView.swift
//  MovieApplication
//
//  Created by Aruzhan Tlek on 14.03.2023.
//

import UIKit

class SectionHeaderView: UIView {
    
    private lazy var categoryLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 30)
        label.textColor = .label
        return label
    }()
    
    private lazy var allLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15)
        label.textColor = .systemOrange
        label.textAlignment = .right
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setupConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with text: String, number: Int) {
        categoryLabel.text = text
        allLabel.text = "All \(number)"
    }
}

private extension  SectionHeaderView{
    
    func setupViews() {
        addSubview(categoryLabel)
        addSubview(allLabel)
    }
    
    func setupConstraints() {
        categoryLabel.snp.makeConstraints { make in
            make.top.leading.bottom.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.8)
        }
        allLabel.snp.makeConstraints { make in
            make.leading.equalTo(categoryLabel.snp.trailing)
            make.top.bottom.trailing.equalToSuperview()
        }
    }
}