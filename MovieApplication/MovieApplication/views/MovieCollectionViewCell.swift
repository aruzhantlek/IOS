//
//  MovieCollectionViewCell.swift
//  MovieApplication
//
//  Created by Aruzhan Tlek on 15.03.2023.
//

import UIKit

final class MovieCollectionViewCell: UICollectionViewCell {
    
    private let wholeView: UIView = {
        let view = UIView()
        return view
    }()
    
    private lazy var posterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "knives")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 5
        return imageView
    }()
    
    private lazy var movieNameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.lineBreakMode = .byWordWrapping
        label.text = "Knives of out: Glass Onion"
        label.font = UIFont.boldSystemFont(ofSize: 17.5)
        //label.font = UIFont.boldSystemFont(ofSize: label.font.pointSize)
        //label.sizeToFit()
        label.textColor = .label
        return label
    }()
    
    private lazy var genreNameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.lineBreakMode = .byWordWrapping
        label.text = "sci-fi, comedy, thriller"
        label.font = UIFont.systemFont(ofSize: 15)
        //label.sizeToFit()
        label.textColor = .systemGray2
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
    
}

//MARK: - Setup views and constraints methods

private extension MovieCollectionViewCell {
    
    func setupViews() {
        contentView.addSubview(wholeView)
        wholeView.addSubview(posterImageView)
        wholeView.addSubview(movieNameLabel)
        wholeView.addSubview(genreNameLabel)
        
    }
    
    func setupConstraints() {
        wholeView.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(5)
        }
        posterImageView.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.7)
        }
        movieNameLabel.snp.makeConstraints { make in
            make.top.equalTo(posterImageView.snp.bottom)
            make.leading.trailing.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.15)
            
        }
        genreNameLabel.snp.makeConstraints { make in
            make.top.equalTo(movieNameLabel.snp.bottom)
            make.leading.trailing.bottom.equalToSuperview()
        }
    }
}
