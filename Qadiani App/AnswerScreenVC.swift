//
//  AnswerScreenVC.swift
//  Qadiani App
//
//  Created by Md. Mominul Islam on 25/9/23.
//

import UIKit

class AnswerScreenVC: UIViewController {

    @IBOutlet weak var answerTextView: UITextView!

    var answerString = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        navigationController?.navigationBar.tintColor = .black
        answerTextView.text = answerString
    }

}
