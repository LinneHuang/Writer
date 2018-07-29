//
//  ViewController.swift
//  Writer
//
//  Created by Linne S. Huang on 7/29/18.
//  Copyright © 2018 Linne S. Huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.becomeFirstResponder()
        
        NotificationCenter.default.addObserver(self, selector: #selector(detectIfSettingsChanged), name: UserDefaults.didChangeNotification, object: nil)
    }
    
    // MARK: Outlets
    @IBOutlet weak var textView: UITextView!
    
    // MARK: Functions
    @objc func detectIfSettingsChanged() {
        print("Night Mode setting is: \(UserDefaults.standard.bool(forKey: "nightMode"))")
        
        // WRITE DOWN LOGICS FIRST!
        // if night mode toggle is on
        // apply the night theme
        // else restore the default themem
        
        if UserDefaults.standard.bool(forKey: "nightMode") == true {
            view.backgroundColor = .black
            textView.textColor = .white
            textView.keyboardAppearance = .dark
            UIApplication.shared.statusBarStyle = .lightContent
        } else {
            view.backgroundColor = .white
            textView.textColor = .black
            textView.keyboardAppearance = .default
            UIApplication.shared.statusBarStyle = .default
        }
        
        
    }
    


}

