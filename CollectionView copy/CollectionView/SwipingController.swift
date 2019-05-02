//
//  SwipingController.swift
//  CollectionView
//
//  Created by Josiah Elisha on 25/04/19.
//  Copyright © 2019 Josiah Elisha. All rights reserved.
//

import UIKit

class SwipingController: UICollectionViewController,UICollectionViewDelegateFlowLayout {
    
    let pages = [
        Questions(questionNumber:1,questionText: "A", answerText: ["Not at all", "Sometimes", "Half the days", "Everyday"],selectedAnswer: nil),
        Questions(questionNumber:2,questionText: "B", answerText: ["Not at all", "Sometimes", "Half the days", "Everyday"],selectedAnswer: nil),
        Questions(questionNumber:3,questionText: "C", answerText: ["Not at all", "Sometimes", "Half the days", "Everyday"],selectedAnswer: nil),
        Questions(questionNumber:4,questionText: "D", answerText: ["Not at all", "Sometimes", "Half the days", "Everyday"],selectedAnswer: nil),
        Questions(questionNumber:5,questionText: "E", answerText: ["Not at all", "Sometimes", "Half the days", "Everyday"],selectedAnswer: nil),
        Questions(questionNumber:6,questionText: "F", answerText: ["Not at all", "Sometimes", "Half the days", "Everyday"],selectedAnswer: nil),
        Questions(questionNumber:7,questionText: "G", answerText: ["Not at all", "Sometimes", "Half the days", "Everyday"],selectedAnswer: nil),
        Questions(questionNumber:8,questionText: "H", answerText: ["Not at all", "Sometimes", "Half the days", "Everyday"],selectedAnswer: nil),
        Questions(questionNumber:9,questionText: "I", answerText: ["Not at all", "Sometimes", "Half the days", "Everyday"],selectedAnswer: nil),
        ]
    
    fileprivate func setBottomControls(){
        let bottomControlStackView = UIStackView(arrangedSubviews: [prevButton, pageControl, nextButton])
        bottomControlStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomControlStackView.distribution = .fillEqually
        
        view.addSubview(bottomControlStackView)
        
        NSLayoutConstraint.activate([
            bottomControlStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            bottomControlStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            bottomControlStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            bottomControlStackView.heightAnchor.constraint(equalToConstant: 50)
            ])
    }
    
    let prevButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("PREV", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.addTarget(self, action: #selector(handlePrev), for: .touchUpInside)
        return button
    }()
    
    @objc func handlePrev(){
        let prevIndex = max(pageControl.currentPage - 1, 0)
        let indexPath = IndexPath(item: prevIndex, section: 0)
        pageControl.currentPage = prevIndex
        collectionView?.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
    
    let nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("NEXT", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.setTitleColor(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), for: .normal)
        button.addTarget(self, action: #selector(handleNext), for: .touchUpInside)
        return button
    }()
    
    @objc func handleNext(){
        let nextIndex = min(pageControl.currentPage + 1, pages.count - 1)
        let indexPath = IndexPath(item: nextIndex, section: 0)
        pageControl.currentPage = nextIndex
        collectionView?.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
    
    private lazy var pageControl: UIPageControl = {
        let pc = UIPageControl()
        pc.currentPage = 0
        pc.numberOfPages = pages.count
        pc.pageIndicatorTintColor = .yellow
        pc.currentPageIndicatorTintColor = .black
        return pc
    }()
    
    
    override func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let x = targetContentOffset.pointee.x
        
        pageControl.currentPage = Int(x / view.frame.width)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBottomControls()
        collectionView?.backgroundColor = .white
        collectionView?.register(PageCell.self, forCellWithReuseIdentifier: "cellID")
        collectionView?.isPagingEnabled = true
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pages.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellID", for: indexPath) as! PageCell
        
        //Questions is called right here
        let page = pages[indexPath.item]
        cell.questionTextView.text = page.questionText
        
        //Buttons should be called right here
        cell.buttons[0].setTitle(page.answerText[0], for: .normal)
        cell.buttons[1].setTitle(page.answerText[1], for: .normal)
        cell.buttons[2].setTitle(page.answerText[2], for: .normal)
        cell.buttons[3].setTitle(page.answerText[3], for: .normal)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    
    
}
