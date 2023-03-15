//
//  CategoryCollectionViewCell.swift
//  MovieApplication
//
//  Created by Aruzhan Tlek on 14.03.2023.
//

import UIKit

final class CategoryCollectionViewCell: UICollectionViewCell {
    
    private var cellSelected: Bool = false 
    
    private lazy var categoryName: UILabel = {
        let label = UILabel()
        //label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = .label
        label.textAlignment = .center
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
    
    func configure(with text: String) {
        categoryName.text = text
        
        
    }
    
    
}

//MARK: - Setup views and constraints methods

private extension CategoryCollectionViewCell {
    
    func setupViews() {
        contentView.addSubview(categoryName)
    }
    
    func setupConstraints() {
        categoryName.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
