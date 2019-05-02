//
//  PageCell.swift
//  CollectionView
//
//  Created by Josiah Elisha on 25/04/19.
//  Copyright © 2019 Josiah Elisha. All rights reserved.
//

import UIKit

class PageCell: UICollectionViewCell {
    
    var selectedAnswer:Int = 0
    
    var questionPage: Questions? {
        didSet {
            guard let unwrappedPage = questionPage else { return }
            let attributedText = NSMutableAttributedString(string: unwrappedPage.questionText, attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18)])
            questionTextView.attributedText = attributedText
            questionTextView.textAlignment = .center
        }
    }
    
    let questionTextView: UITextView = {
        let textView = UITextView()
        //let attributedText = NSMutableAttributedString(string: "test", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18)])
       textView.font = UIFont.systemFont(ofSize: 22)
        textView.backgroundColor = nil
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isSelectable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    lazy var Button1: UIButton = {
        let buttonView = UIButton(type: .system)
        buttonView.layer.cornerRadius = 5
        buttonView.tag = 0
        buttonView.setTitle("Not at all", for: .normal)
        buttonView.translatesAutoresizingMaskIntoConstraints = false
        buttonView.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        buttonView.setTitleColor(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), for: .normal)
        buttonView.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        buttonView.backgroundColor = .white
        return buttonView
    }()

    lazy var Button2: UIButton = {
        let buttonView = UIButton(type: .system)
        buttonView.layer.cornerRadius = 5
        buttonView.tag = 1
        buttonView.setTitle("Sometimes", for: .normal)
        buttonView.translatesAutoresizingMaskIntoConstraints = false
        buttonView.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        buttonView.setTitleColor(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), for: .normal)
        buttonView.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        buttonView.backgroundColor = .white
        return buttonView
    }()

    lazy var Button3: UIButton = {
        let buttonView = UIButton(type: .system)
        buttonView.layer.cornerRadius = 5
        buttonView.tag = 2
        buttonView.setTitle("Half the days", for: .normal)
        buttonView.translatesAutoresizingMaskIntoConstraints = false
        buttonView.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        buttonView.setTitleColor(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), for: .normal)
        buttonView.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        buttonView.backgroundColor = .white
        return buttonView
    }()

    lazy var Button4: UIButton = {
        let buttonView = UIButton(type: .system)
        buttonView.layer.cornerRadius = 5
        buttonView.tag = 3
        buttonView.setTitle("Everyday", for: .normal)
        buttonView.translatesAutoresizingMaskIntoConstraints = false
        buttonView.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        buttonView.setTitleColor(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), for: .normal)
        buttonView.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        buttonView.backgroundColor = .white
        return buttonView
    }()
    
    lazy var buttons = [Button1,Button2,Button3,Button4]
    

    
    @objc func buttonPressed(_ sender: UIButton) {
        buttons.forEach { $0.isSelected = false
            $0.setTitleColor(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), for: .normal)
            $0.backgroundColor = .white
        }

        buttons[sender.tag].setTitleColor(.red, for: .normal)
        buttons[sender.tag].isSelected = true
        selectedAnswer = sender.tag
        
        debugPrint(sender.tag, buttons[sender.tag].isSelected,selectedAnswer)
    }
    
//    @objc func AddPoints(_ sender: UIButton){
//
//        switch sender.tag {
//        case 0:
//            for button in buttons {
//                button.backgroundColor = .white
//                button.setTitleColor(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), for: .normal)
//            }
//            buttons[0].backgroundColor = .cyan
//            buttons[0].setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
//            break
//        case 1:
//            for button in buttons {
//                button.backgroundColor = .white
//                button.setTitleColor(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), for: .normal)
//            }
//            buttons[1].backgroundColor = .cyan
//            buttons[1].setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
//            break
//        case 2:
//            for button in buttons {
//                button.backgroundColor = .white
//                button.setTitleColor(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), for: .normal)
//            }
//            buttons[2].backgroundColor = .cyan
//            buttons[2].setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
//            break
//        case 3:
//            for button in buttons {
//                button.backgroundColor = .white
//                button.setTitleColor(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), for: .normal)
//            }
//            buttons[3].backgroundColor = .cyan
//            buttons[3].setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
//            break
//        default:
//            print("")
//        }
//        debugPrint("Tap Button", sender.tag)
//
//    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .lightGray
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout() {
        let questionsStackView = UIStackView(arrangedSubviews: [Button1, Button2, Button3, Button4])
        questionsStackView.translatesAutoresizingMaskIntoConstraints = false
        questionsStackView.distribution = .fillEqually
        questionsStackView.axis = .vertical
        questionsStackView.spacing = 30
        
        let topHalfView = UIView()
        //topHalfView.backgroundColor = .red
       // topHalfView.frame = CGRect(x: 0, y: 0, width: 150, height: 150)
        topHalfView.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(topHalfView)
        
        addSubview(questionTextView)
        
        addSubview(questionsStackView)
        
        NSLayoutConstraint.activate([

            topHalfView.topAnchor.constraint(equalTo: topAnchor),
            topHalfView.leadingAnchor.constraint(equalTo: leadingAnchor),
            topHalfView.heightAnchor.constraint(equalTo:heightAnchor, multiplier: 0.5),
            topHalfView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            questionTextView.centerXAnchor.constraint(equalTo: topHalfView.centerXAnchor),
            questionTextView.centerYAnchor.constraint(equalTo: topHalfView.centerYAnchor),
            questionTextView.topAnchor.constraint(equalTo: topHalfView.topAnchor, constant: 150),
            questionTextView.leadingAnchor.constraint(equalTo: topHalfView.leadingAnchor, constant: 20),
            questionTextView.trailingAnchor.constraint(equalTo: topHalfView.trailingAnchor, constant: -20),
            
            questionsStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            questionsStackView.topAnchor.constraint(equalTo: topHalfView.bottomAnchor, constant: -30),
            questionsStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            questionsStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            questionsStackView.heightAnchor.constraint(equalToConstant: 300)

            ])
    }
}
