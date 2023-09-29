//
//  ViewController.swift
//  Qadiani App
//
//  Created by Md. Mominul Islam on 25/9/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var QuestionTableView: UITableView!

    var qaList: [QuestioAnswer] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        qaList = fetchQAList()
        QuestionTableView.delegate = self
        QuestionTableView.dataSource = self
        QuestionTableView.register(UINib(nibName: "QuestionTableViewCell", bundle: nil), forCellReuseIdentifier: "QuestionTableViewCell")
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return qaList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionTableViewCell", for: indexPath) as! QuestionTableViewCell
        cell.qLabel.text = qaList[indexPath.row].question
        cell.tapAction = {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "AnswerScreenVC") as! AnswerScreenVC
            vc.title = self.qaList[indexPath.row].question
            vc.answerString = self.qaList[indexPath.row].answer
            self.navigationController?.pushViewController(vc, animated: true)
        }
        return cell
    }
    
    
}
