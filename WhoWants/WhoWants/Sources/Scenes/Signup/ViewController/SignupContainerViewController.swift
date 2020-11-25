//
//  SignupContainerViewController.swift
//  WhoWants
//
//  Created by 윤동민 on 2020/11/25.
//

import UIKit

class SignupContainerViewController: UIViewController {
    // MARK: - UI
    var progressView: UIProgressView = {
        var progressView = UIProgressView(progressViewStyle: .default)
        progressView.progress = 0
        progressView.progressTintColor = UIColor(red: 0.13, green: 0.13, blue: 0.13, alpha: 1.0)
        progressView.translatesAutoresizingMaskIntoConstraints = false
        return progressView
    }()
    
    // MARK: - Init
    private func initView() {
        view.addSubview(progressView)
    }
    
    private func setNav() {
        navigationController?.navigationBar.isHidden = false
        navigationController?.navigationBar.tintColor = UIColor(red: <#T##CGFloat#>, green: <#T##CGFloat#>, blue: <#T##CGFloat#>, alpha: <#T##CGFloat#>)
    }

    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
        initView()
        configureLayout()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    // MARK: - Layout
    private func configureLayout() {
        NSLayoutConstraint.activate([
            progressView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            progressView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            progressView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
}
