//
//  ViewController.swift
//  ApplicationTwo
//
//  Created by Aruzhan Tlek on 08.01.2023.
//

import UIKit
import SnapKit

final class ViewController: UIViewController {
    
    private lazy var redView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemRed
        return view
    }()
    
    private lazy var greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGreen
        return view
    }()
    
    private lazy var biggerView = UIView()
    
    private lazy var yellowView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemYellow
        return view
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemBlue //global view
        setupViews()
        setupConstraints()
        
    }
}

//MARK: - Setup views and constraits method

private extension ViewController {
    
    func setupViews() {
        view.addSubview(biggerView)
        biggerView.addSubview(redView)
        biggerView.addSubview(greenView)
        //view.addSubview(redView)
        //view.addSubview(greenView)
        view.addSubview(yellowView)
    }
    
    func setupConstraints() {
        biggerView.snp.makeConstraints{ make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(2)
        }
        redView.snp.makeConstraints{ make in
            make.edges.equalToSuperview()
        }
        greenView.snp.makeConstraints{ make in
            make.center.equalToSuperview()
            make.size.equalToSuperview().dividedBy(2)
        }
        /*
        redView.snp.makeConstraints{ make in
            make.top.leading.bottom.equalToSuperview()
            make.width.equalToSuperview().dividedBy(2)
        }
        greenView.snp.makeConstraints{ make in
            make.leading.equalTo(redView.snp.trailing)
            make.top.trailing.bottom.equalToSuperview()
        }
        */
        
        yellowView.snp.makeConstraints{ make in
            make.top.equalTo(biggerView.snp.bottom)
            make.leading.trailing.equalToSuperview()
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
        
        /*
        redView.snp.makeConstraints{ make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.leading.equalToSuperview()
            make.width.equalTo(view.safeAreaLayoutGuide.snp.width).dividedBy(2)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(2)
        }
        greenView.snp.makeConstraints{ make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.leading.equalTo(redView.snp.trailing)
            make.width.equalTo(view.safeAreaLayoutGuide.snp.width).dividedBy(2)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(2)
        }
        yellowView.snp.makeConstraints{ make in
            make.top.equalTo(redView.snp.bottom)
            make.leading.trailing.equalToSuperview()
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
        
        
        //vertical
        redView.snp.makeConstraints{ make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.leading.equalToSuperview()
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            make.width.equalTo(view.safeAreaLayoutGuide.snp.width).dividedBy(3)
        }
        
        greenView.snp.makeConstraints{ make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.leading.equalTo(redView.snp.trailing)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            make.width.equalTo(view.safeAreaLayoutGuide.snp.width).dividedBy(3)
        }
        
        yellowView.snp.makeConstraints{ make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.leading.equalTo(greenView.snp.trailing)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            make.trailing.equalToSuperview()
        }
        
        //horizontal
        redView.snp.makeConstraints{ make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).multipliedBy(0.33) //dividedby(3)
        }
        
        greenView.snp.makeConstraints{ make in
            make.top.equalTo(redView.snp.bottom)
            make.leading.equalToSuperview() //make.leading.trailing.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).multipliedBy(0.33)//dividedby(3)
        }
        
        yellowView.snp.makeConstraints{ make in
            make.top.equalTo(greenView.snp.bottom)
            make.leading.trailing.equalToSuperview()
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
 */
        
    }
    
}




/*
 redView.snp.makeConstraints{ make in
     make.center.equalToSuperview()
     //make.size.equalTo(375)
     //make.height.equalTo(100)
     //make.width.equalTo(200)
    // make.width.equalToSuperview().multipliedBy(0.95)
    // make.height.equalTo(view.snp.width).multipliedBy(0.95)
    // make.height.width.equalTo(view.snp.width).multipliedBy(0.95)
     make.size.equalTo(view.snp.width).multipliedBy(0.95)
 }
 redview
{
 make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
 make.leading.trailing.equalToSuperview()
 make.height.equalTo(view.safeAreaLayoutGuide.snp.height).multipliedBy(0.5)
//  make.leading.equalToSuperview()
//  make.trailing.equalToSuperview()
//  make.bottom.equalTo(greenView.snp.top) you can/need to write only in one view
//  make.top.bottom.leading.trailing.equalToSuperview()
 make.bottom.equalTo(greenView.snp.top).inset(-10)
 
 // make.edges.equalToSuperview().inset(20)
  make.top.leading.equalToSuperview()
  make.trailing.bottom.equalToSuperview().inset(20)
  
 }
 */
