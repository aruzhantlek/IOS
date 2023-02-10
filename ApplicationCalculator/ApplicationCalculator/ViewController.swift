//
//  ViewController.swift
//  ApplicationCalculator
//
//  Created by Aruzhan Tlek on 26.01.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private lazy var topView = UIView()
    
    private lazy var displayLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = "12345"
        label.textAlignment = .right
        label.font = UIFont.boldSystemFont(ofSize: 70)
       
        return label
    }()
    
    private lazy var bottomView = UIView()
    
    private lazy var firstView = UIView()
    private lazy var buttonC = UIButton.createButton(with: "C", and: .gray)
    private lazy var buttonQuantity = UIButton.createButton(with: "+/-", and: .gray)
    private lazy var buttonPercentage = UIButton.createButton(with: "%", and: .gray)
    private lazy var buttonDivide = UIButton.createButton(with: ":", and: .systemOrange)
    
    private lazy var secondView = UIView()
    private lazy var buttonSeven = UIButton.createButton(with: "7", and: .gray)
    private lazy var buttonEight = UIButton.createButton(with: "8", and: .gray)
    private lazy var buttonNine = UIButton.createButton(with: "9", and: .gray)
    private lazy var buttonMultiply = UIButton.createButton(with: "х", and: .systemOrange)
    
    private lazy var thirdView = UIView()
    private lazy var buttonFour = UIButton.createButton(with: "4", and: .gray)
    private lazy var buttonFive = UIButton.createButton(with: "5", and: .gray)
    private lazy var buttonSix = UIButton.createButton(with: "6", and: .gray)
    private lazy var buttonMinus = UIButton.createButton(with: "-", and: .systemOrange)
    
    private lazy var fourthView = UIView()
    private lazy var buttonOne = UIButton.createButton(with: "1", and: .gray)
    private lazy var buttonTwo = UIButton.createButton(with: "2", and: .gray)
    private lazy var buttonThree = UIButton.createButton(with: "3", and: .gray)
    private lazy var buttonPlus = UIButton.createButton(with: "+", and: .systemOrange)
    
    private lazy var fifthView = UIView()
    private lazy var buttonZero = UIButton.createButton(with: "0", and: .gray)
    private lazy var buttonDott = UIButton.createButton(with: ".", and: .gray)
    private lazy var buttonEqual = UIButton.createButton(with: "=", and: .systemOrange)
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .black
        // Do any additional setup after loading the view.
        
        setupViews()
        setupConstraints()
    }
}
//MARK: Setup views and constraints

    private extension ViewController {
        
        func setupViews() {
            // Adding to view
            view.addSubview(topView)
            view.addSubview(bottomView)
            //Adding to topView
            topView.addSubview(displayLabel)
            //Adding to bottomView
            bottomView.addSubview(firstView)
            bottomView.addSubview(secondView)
            bottomView.addSubview(thirdView)
            bottomView.addSubview(fourthView)
            bottomView.addSubview(fifthView)
            //Adding to firstView
            firstView.addSubview(buttonC)
            firstView.addSubview(buttonQuantity)
            firstView.addSubview(buttonPercentage)
            firstView.addSubview(buttonDivide)
            //Adding to secondView
            secondView.addSubview(buttonSeven)
            secondView.addSubview(buttonEight)
            secondView.addSubview(buttonNine)
            secondView.addSubview(buttonMultiply)
            //Adding to thirdView
            thirdView.addSubview(buttonFour)
            thirdView.addSubview(buttonFive)
            thirdView.addSubview(buttonSix)
            thirdView.addSubview(buttonMinus)
            //Adding to fourthView
            fourthView.addSubview(buttonOne)
            fourthView.addSubview(buttonTwo)
            fourthView.addSubview(buttonThree)
            fourthView.addSubview(buttonPlus)
            //Adding to fifthView
            fifthView.addSubview(buttonZero)
            fifthView.addSubview(buttonDott)
            fifthView.addSubview(buttonEqual)
        }
        
        func setupConstraints() {
            //topView constraints
            topView.snp.makeConstraints { make in
                make.leading.trailing.equalToSuperview()
                make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
                make.height.equalTo(view.safeAreaLayoutGuide.snp.height).multipliedBy(0.4)
            }
            displayLabel.snp.makeConstraints{ make in
                make.edges.equalToSuperview()
            }
            //bottomView constraints
            bottomView.snp.makeConstraints { make in
                make.top.equalTo(topView.snp.bottom)
                make.leading.trailing.equalToSuperview()
                make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            }
            firstView.snp.makeConstraints { make in
                make.top.leading.trailing.equalToSuperview()
                make.height.equalToSuperview().dividedBy(5)
            }
            setupButton(buttonOne: buttonC, buttonTwo: buttonQuantity, buttonThree: buttonPercentage, buttonFour: buttonDivide)
            
            secondView.snp.makeConstraints { make in
                make.top.equalTo(firstView.snp.bottom)
                make.leading.trailing.equalToSuperview()
                make.height.equalToSuperview().dividedBy(5)
            }
            setupButton(buttonOne: buttonSeven, buttonTwo: buttonEight, buttonThree: buttonNine, buttonFour: buttonMultiply)
            thirdView.snp.makeConstraints{ make in
                make.top.equalTo(secondView.snp.bottom)
                make.leading.trailing.equalToSuperview()
                make.height.equalToSuperview().dividedBy(5)
            }
            setupButton(buttonOne: buttonFour, buttonTwo: buttonFive, buttonThree: buttonSix, buttonFour: buttonMinus)
            fourthView.snp.makeConstraints{ make in
                make.top.equalTo(thirdView.snp.bottom)
                make.leading.trailing.equalToSuperview()
                make.height.equalToSuperview().dividedBy(5)
            }
            setupButton(buttonOne: buttonOne, buttonTwo: buttonTwo, buttonThree: buttonThree, buttonFour: buttonPlus)
            fifthView.snp.makeConstraints{ make in
                make.top.equalTo(fourthView.snp.bottom)
                make.leading.trailing.bottom.equalToSuperview()
            }
            buttonZero.snp.makeConstraints{ make in
                make.top.leading.bottom.equalToSuperview()
                make.width.equalToSuperview().dividedBy(2)
            }
            buttonDott.snp.makeConstraints{ make in
                make.top.bottom.equalToSuperview()
                make.leading.equalTo(buttonZero.snp.trailing)
                make.width.equalToSuperview().dividedBy(4)
            }
            buttonEqual.snp.makeConstraints{ make in
                make.top.bottom.trailing.equalToSuperview()
                make.leading.equalTo(buttonDott.snp.trailing)
            }
            
        }
        func setupButton(buttonOne: UIButton, buttonTwo: UIButton, buttonThree: UIButton, buttonFour: UIButton){
            buttonOne.snp.makeConstraints { make in
                make.top.leading.bottom.equalToSuperview()
                make.width.equalToSuperview().dividedBy(4)
            }
            buttonTwo.snp.makeConstraints { make in
                make.leading.equalTo(buttonOne.snp.trailing)
                make.top.bottom.equalToSuperview()
                make.width.equalToSuperview().dividedBy(4)
            }
            buttonThree.snp.makeConstraints { make in
                make.leading.equalTo(buttonTwo.snp.trailing)
                make.top.bottom.equalToSuperview()
                make.width.equalToSuperview().dividedBy(4)
            }
            buttonFour.snp.makeConstraints { make in
                make.leading.equalTo(buttonThree.snp.trailing)
                make.top.bottom.trailing.equalToSuperview()
            }
        }
    }


//MARK: - Other additional functionality

extension UIButton {
    
    static func createButton(with text: String, and color: UIColor) -> UIButton {
        let button = UIButton(type: .system)
        
   
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        button.setTitle(text, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = color
        //button.layer.cornerRadius = 40
        return button
    }
    

}



