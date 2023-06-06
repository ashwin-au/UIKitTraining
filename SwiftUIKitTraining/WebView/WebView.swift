//
//  WebView.swift
//  SwiftUIKitTraining
//
//  Created by Ashwin A U on 30/05/23.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadWebView()
    }
    
    func loadWebView() {
        if let url = URL(string: "https://www.apple.com") {
            webView.load(URLRequest(url: url))
        }
    }
}
