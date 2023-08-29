//
//  BaseViewController.swift
//  Na'nez
//
//  Created by 최지철 on 2023/08/22.
//

import UIKit

class BaseViewController: UIViewController {
    func layout(){}
    func configure(){}
    // MARK: 탭시 키보드 내리기
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.configure()
        self.layout()
    }
}
