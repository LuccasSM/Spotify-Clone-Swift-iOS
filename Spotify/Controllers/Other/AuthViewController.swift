//
//  AuthViewController.swift
//  Spotify
//
//  Created by Luccas Santana Marinho on 15/09/22.
//

import UIKit
import WebKit

class AuthViewController: UIViewController, WKNavigationDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Sign In"
        self.view.backgroundColor = .systemBackground
        webView.navigationDelegate = self
        
        setupViews()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        webView.frame = view.bounds
    }
    
    // MARK: Screen views
    
    private let webView: WKWebView = {
        let prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        let config = WKWebViewConfiguration()
        config.defaultWebpagePreferences = prefs
        let webView = WKWebView(frame: .zero, configuration: config)
        return webView
    }()
    
    public var completionHandler: ((Bool) -> Void)?
    
    // MARK: Functions
    
    func setupViews() {
        self.view.addSubview(webView)
    }
}
