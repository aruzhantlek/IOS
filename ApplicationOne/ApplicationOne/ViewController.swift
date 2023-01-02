//
//  ViewController.swift
//  ApplicationOne
//
//  Created by Aruzhan Tlek on 01.01.2023.
//

import UIKit
import SnapKit

final class ViewController: UIViewController {
    
    private lazy var myDiamondImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "diamond")
        return imageView
    }()
    
    private lazy var myRichLabel: UILabel = {
        let labelView = UILabel()
        labelView.font = UIFont.boldSystemFont(ofSize: 50)
        labelView.text = "I'm rich"
        labelView.textColor = .white
        return labelView
    }()
    
    private lazy var myBuyLabel: UILabel = {
        let labelView = UILabel()
        labelView.font = UIFont.boldSystemFont(ofSize: 25)
        labelView.text = "I can buy anything!"
        labelView.textColor = .white
        return labelView
    }()
    
    private lazy var myChangeButton: UIButton = {
        let button = UIButton()
        button.setTitle("Change", for: .normal)
        button.backgroundColor = .systemGray2
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(didPressButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var myChangeLabel: UILabel = {
        let labelView = UILabel()
        labelView.font = UIFont.boldSystemFont(ofSize: 25)
        labelView.text = "Account: 0$"
        labelView.textColor = .white
        return labelView
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(red: 30/255, green: 87/255, blue: 49/255, alpha: 1)
        setupViews()
        setupConstraints()
    }
    
    @objc func didPressButton(sender: UIButton){
        myChangeLabel.text = "Account: \(Int.random(in: 1000..<10000))$"
    }
}

//MARK: - Setup views and constraints methods

private extension ViewController{
    func setupViews() {
        view.addSubview(myRichLabel)
        view.addSubview(myDiamondImage)
        view.addSubview(myBuyLabel)
        view.addSubview(myChangeLabel)
        view.addSubview(myChangeButton)
        
        
    }
    
    func setupConstraints() {
        myRichLabel.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(myDiamondImage.snp.top).offset(-25)
            
        }
        myDiamondImage.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(300)
        }
        myBuyLabel.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(myDiamondImage.snp.bottom)
        }
        myChangeLabel.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(myBuyLabel.snp.bottom).offset(50)
        }
        myChangeButton.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(myChangeLabel.snp.bottom).offset(70)
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalToSuperview().dividedBy(20)
        }
    }
}
