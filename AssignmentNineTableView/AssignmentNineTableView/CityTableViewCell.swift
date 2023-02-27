//
//  CityTableViewCell.swift
//  AssignmentNineTableView
//
//  Created by Aruzhan Tlek on 26.02.2023.
//

import UIKit
import SnapKit

final class CityTableViewCell: UITableViewCell {
    
    private let textView = UIView()
    
    private lazy var cityNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    
    private lazy var cityPriceLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .systemBlue
        return label
    }()
    
    private lazy var cityImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 10
        imageView.layer.masksToBounds = true
        return imageView
    }()

    static let IDENTIFIER =  "CityTableViewCell"
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        setupConstraints()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with city: City){
        cityNameLabel.text = city.cityName
        cityPriceLabel.text = "\(city.ticketPrice) $"
        cityImageView.image = UIImage(named: city.imageName)
    }
}

//MARK: - Setup views and constraints

private extension CityTableViewCell {
    
    func setupViews() {
        contentView.addSubview(textView)
        textView.addSubview(cityNameLabel)
        textView.addSubview(cityPriceLabel)
        contentView.addSubview(cityImageView)
    }
    
    func setupConstraints() {
        textView.snp.makeConstraints{ make in
            make.top.equalToSuperview()
            make.leading.bottom.equalToSuperview().inset(15)
          //  make.width.equalToSuperview().multipliedBy(0.75)
        }
        
        cityNameLabel.snp.makeConstraints{ make in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.75)
            
        }
        cityPriceLabel.snp.makeConstraints{ make in
            make.top.equalTo(cityNameLabel.snp.bottom)
            make.bottom.leading.trailing.equalToSuperview()
        }
        cityImageView.snp.makeConstraints{ make in
            make.top.trailing.bottom.equalToSuperview().inset(10)
            make.leading.equalTo(textView.snp.trailing)
            make.size.equalTo(100)
             
        }
        
    }
}
