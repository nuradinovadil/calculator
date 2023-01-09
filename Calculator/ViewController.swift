//
//  ViewController.swift
//  Calculator
//
//  Created by Nuradinov Adil on 09/01/23.
//

import UIKit
import SnapKit

final class ViewController: UIViewController {
    
    private lazy var myLabelOne: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 85)
        label.text = "0"
        label.textColor = .white
        return label
    }()
    
    private lazy var myButtonZero: UIButton = {
        let button = UIButton()
        button.setTitle("0", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 40
        return button
    }()
    
    private lazy var myButtonComa: UIButton = {
        let button = UIButton()
        button.setTitle(",", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 40
        return button
    }()
    
    private lazy var myButtonEqual: UIButton = {
        let button = UIButton()
        button.setTitle("=", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .orange
        button.layer.cornerRadius = 40
        return button
    }()
    
    private lazy var myButtonOne: UIButton = {
        let button = UIButton()
        button.setTitle("1", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 40
        return button
    }()
    
    private lazy var myButtonTwo: UIButton = {
        let button = UIButton()
        button.setTitle("2", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 40
        return button
    }()
    
    private lazy var myButtonThree: UIButton = {
        let button = UIButton()
        button.setTitle("3", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 40
        return button
    }()
    
    private lazy var myButtonPlus: UIButton = {
        let button = UIButton()
        button.setTitle("+", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .orange
        button.layer.cornerRadius = 40
        return button
    }()
    
    private lazy var myButtonFour: UIButton = {
        let button = UIButton()
        button.setTitle("4", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 40
        return button
    }()
    
    private lazy var myButtonFive: UIButton = {
        let button = UIButton()
        button.setTitle("5", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 40
        return button
    }()
    
    private lazy var myButtonSix: UIButton = {
        let button = UIButton()
        button.setTitle("6", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 40
        return button
    }()
    
    private lazy var myButtonSeven: UIButton = {
        let button = UIButton()
        button.setTitle("7", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 40
        return button
    }()
    
    private lazy var myButtonEight: UIButton = {
        let button = UIButton()
        button.setTitle("8", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 40
        return button
    }()
    
    private lazy var myButtonNine: UIButton = {
        let button = UIButton()
        button.setTitle("9", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 40
        return button
    }()
    
    private lazy var myButtonDiv: UIButton = {
        let button = UIButton()
        button.setTitle("÷", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .orange
        button.layer.cornerRadius = 40
        return button
    }()
    
    private lazy var myButtonMult: UIButton = {
        let button = UIButton()
        button.setTitle("×", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .orange
        button.layer.cornerRadius = 40
        return button
    }()
    
    private lazy var myButtonMin: UIButton = {
        let button = UIButton()
        button.setTitle("-", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .orange
        button.layer.cornerRadius = 40
        return button
    }()
    
    private lazy var myButtonC: UIButton = {
        let button = UIButton()
        button.setTitle("C", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemGray
        button.layer.cornerRadius = 40
        return button
    }()
    
    private lazy var myButtonN: UIButton = {
        let button = UIButton()
        button.setTitle("+/-", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemGray
        button.layer.cornerRadius = 40
        return button
    }()
    
    private lazy var myButtonPercentage: UIButton = {
        let button = UIButton()
        button.setTitle("%", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemGray
        button.layer.cornerRadius = 40
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        setUpViews()
        setUpConstraints()
    }


}

private extension ViewController {
    func setUpViews() {
        view.addSubview(myLabelOne)
        view.addSubview(myButtonZero)
        view.addSubview(myButtonComa)
        view.addSubview(myButtonEqual)
        view.addSubview(myButtonOne)
        view.addSubview(myButtonTwo)
        view.addSubview(myButtonThree)
        view.addSubview(myButtonPlus)
        view.addSubview(myButtonFour)
        view.addSubview(myButtonFive)
        view.addSubview(myButtonSix)
        view.addSubview(myButtonSeven)
        view.addSubview(myButtonEight)
        view.addSubview(myButtonNine)
        view.addSubview(myButtonDiv)
        view.addSubview(myButtonMin)
        view.addSubview(myButtonMult)
        view.addSubview(myButtonC)
        view.addSubview(myButtonN)
        view.addSubview(myButtonPercentage)
        
    }
    
    func setUpConstraints() {
        
        myButtonZero.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(18)
            make.width.equalTo(170)
            make.bottom.equalToSuperview().inset(45)
            make.height.equalTo(80)
        }
        
        myButtonComa.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(198)
            make.width.equalTo(80)
            make.bottom.equalToSuperview().inset(45)
            make.height.equalTo(80)
        }
        
        myButtonEqual.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(288)
            make.width.equalTo(80)
            make.bottom.equalToSuperview().inset(45)
            make.height.equalTo(80)
        }
        
        myButtonOne.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(18)
            make.width.equalTo(80)
            make.bottom.equalTo(myButtonZero.snp.top).inset(-10)
            make.height.equalTo(80)
        }
        
        myButtonTwo.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(108)
            make.width.equalTo(80)
            make.bottom.equalTo(myButtonZero.snp.top).inset(-10)
            make.height.equalTo(80)
        }
        
        myButtonThree.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(198)
            make.width.equalTo(80)
            make.bottom.equalTo(myButtonComa.snp.top).inset(-10)
            make.height.equalTo(80)
        }
        
        myButtonPlus.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(288)
            make.width.equalTo(80)
            make.bottom.equalTo(myButtonEqual.snp.top).inset(-10)
            make.height.equalTo(80)
        }
        
        myButtonFour.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(18)
            make.width.equalTo(80)
            make.bottom.equalTo(myButtonOne.snp.top).inset(-10)
            make.height.equalTo(80)
        }
        
        myButtonFive.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(108)
            make.width.equalTo(80)
            make.bottom.equalTo(myButtonTwo.snp.top).inset(-10)
            make.height.equalTo(80)
        }
        
        myButtonSix.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(198)
            make.width.equalTo(80)
            make.bottom.equalTo(myButtonThree.snp.top).inset(-10)
            make.height.equalTo(80)
        }
        
        myButtonSeven.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(18)
            make.width.equalTo(80)
            make.bottom.equalTo(myButtonFour.snp.top).inset(-10)
            make.height.equalTo(80)
        }
        
        myButtonEight.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(108)
            make.width.equalTo(80)
            make.bottom.equalTo(myButtonFive.snp.top).inset(-10)
            make.height.equalTo(80)
        }
        
        myButtonNine.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(198)
            make.width.equalTo(80)
            make.bottom.equalTo(myButtonSix.snp.top).inset(-10)
            make.height.equalTo(80)
        }
        
        myButtonMin.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(288)
            make.width.equalTo(80)
            make.bottom.equalTo(myButtonPlus.snp.top).inset(-10)
            make.height.equalTo(80)
        }
        
        myButtonMult.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(288)
            make.width.equalTo(80)
            make.bottom.equalTo(myButtonMin.snp.top).inset(-10)
            make.height.equalTo(80)
        }
        
        myButtonDiv.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(288)
            make.width.equalTo(80)
            make.bottom.equalTo(myButtonMult.snp.top).inset(-10)
            make.height.equalTo(80)
        }
        
        myButtonC.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(18)
            make.width.equalTo(80)
            make.bottom.equalTo(myButtonSeven.snp.top).inset(-10)
            make.height.equalTo(80)
        }
        
        myButtonN.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(108)
            make.width.equalTo(80)
            make.bottom.equalTo(myButtonEight.snp.top).inset(-10)
            make.height.equalTo(80)
        }
        
        myButtonPercentage.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(198)
            make.width.equalTo(80)
            make.bottom.equalTo(myButtonNine.snp.top).inset(-10)
            make.height.equalTo(80)
        }
        
        myLabelOne.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(50)
            make.bottom.equalTo(myButtonDiv.snp.top).inset(-20)
            
        }
        
    }
}
