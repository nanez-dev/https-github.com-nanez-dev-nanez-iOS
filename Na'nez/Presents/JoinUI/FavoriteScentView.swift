//
//  FavoriteScentView.swift
//  Na'nez
//
//  Created by Gahyun Kim on 2023/09/17.
//



import UIKit
//import DropDown

class FavoriteScentView: UIView {
    
    
    //프로그레스뷰
    let progressView: UIProgressView = {
        let progressView = UIProgressView()
        progressView.translatesAutoresizingMaskIntoConstraints = false
        progressView.setProgress(1.0, animated: true) // Initial progress value
        return progressView
    }()
    
    let mainLabelLine1: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "마지막 질문!"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textColor = .black
        return label
    }()
    
    let mainLabelLine2: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "좋아하는 향 있어요?"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textColor = .black
        return label
    }()
    
    
    let detailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "가장 취향에 맞는 향을 한 가지만 선택해주세요 :)"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .gray
        return label
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textColor = .black
        return label
    }()
    
    
    let nextButton: UIButton = {
        let nextButton = UIButton()
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.setTitle("다음으로", for: .normal)
        nextButton.backgroundColor = UIColor.lightGray.withAlphaComponent(0.7)
        nextButton.layer.cornerRadius = 17
        nextButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        return nextButton
    }()
    
    
    
    lazy var labelStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [mainLabelLine1, mainLabelLine2, detailLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 7
        return stackView
    }()
    
    
    
    
    let genderButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("향 종류 이미지 ? 버튼 ??", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    // let dropDown = DropDown()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    private func setupUI() {
        
        addSubview(progressView)
        addSubview(labelStackView)
        addSubview(titleLabel)
        addSubview(genderButton)
        addSubview(nextButton)
        
        //snapkit
        //then
        //flexible Layout
        
        
        
        NSLayoutConstraint.activate([
            
            //progressView
            progressView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50), // 네비게이션 바 바로 밑에 배치
            progressView.leadingAnchor.constraint(equalTo: leadingAnchor),
            progressView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            labelStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 42),
            labelStackView.topAnchor.constraint(equalTo: progressView.bottomAnchor, constant: 50),
            labelStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -47),
            
            
            //titleLabel
            titleLabel.leadingAnchor.constraint(equalTo: labelStackView.leadingAnchor),
            titleLabel.topAnchor.constraint(equalTo: labelStackView.bottomAnchor, constant: 35),
            titleLabel.trailingAnchor.constraint(equalTo: labelStackView.trailingAnchor),
            
            genderButton.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            genderButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            genderButton.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
            
            
            //next Button
            nextButton.leadingAnchor.constraint(equalTo: genderButton.leadingAnchor, constant: -10),
            //nextButton.topAnchor.constraint(equalTo: genderButton.bottomAnchor, constant: 385),
            nextButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -85),
            //nextButton.trailingAnchor.constraint(equalTo: check_textField.trailingAnchor),
            nextButton.widthAnchor.constraint(equalToConstant: 344),
            nextButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        // setupDropDown()
    }
}
