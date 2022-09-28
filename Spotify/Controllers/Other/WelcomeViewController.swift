//
//  WelcomeViewController.swift
//  Spotify
//
//  Created by Luccas Santana Marinho on 15/09/22.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Spotify"
        self.view.backgroundColor = .systemGreen
        
        setupViews()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        signInButton.frame = CGRect(x: 20, y: view.height-50-view.safeAreaInsets.bottom, width: view.width-40, height: 50)
    }
    
    // MARK: Screen views
    
    private let signInButton: UIButton = {
        let button = UIButton()
        let title = "Sign In with Spotify"
        button.backgroundColor = .white
        button.setTitle(title, for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.addTarget(self, action: #selector(didTapSignIn), for: .touchUpInside)
        return button
    }()
    
    // MARK: Functions
    
    func setupViews() {
        self.view.addSubview(signInButton)
    }
    
    @objc func didTapSignIn() {
        let vc = AuthViewController()
        vc.completionHandler = { [weak self] success in
            DispatchQueue.main.async {
                self?.handleSignIn(success: success)
            }
        }
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private func handleSignIn(success: Bool) {
    
    // MARK: Log user in or yell at them for error
        
        
    }
}
