//
//  ViewController.swift
//  appReviewPopup
//
//  Created by Macbook on 05/07/2021.
//

import UIKit
import StoreKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func reviewBtnPressed(_ sender: UIButton) {
        if let scene = UIApplication.shared.connectedScenes.first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene {
                            SKStoreReviewController.requestReview(in: scene)
                        }
    }
    
}

