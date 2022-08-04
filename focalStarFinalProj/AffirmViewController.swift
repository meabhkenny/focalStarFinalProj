//
//  AffirmViewController.swift
//  focalStarFinalProj
//
//  Created by scholar on 8/4/22.
//

import UIKit
import WebKit

class AffirmViewController: UIViewController {
    let webView = WKWebView()
      override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(webView)
        guard let url = URL(string: "https://succedict.com/random-quotes-generator/") else {
          return}
        webView.load(URLRequest(url: url))
        // Do any additional setup after loading the view.
      }
      override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        webView.frame = view.bounds
      }


        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


