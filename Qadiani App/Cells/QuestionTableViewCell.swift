//
//  QuestionTableViewCell.swift
//  Qadiani App
//
//  Created by Md. Mominul Islam on 25/9/23.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {

    @IBOutlet weak var qLabel: UILabel!

    var tapAction: () -> Void = {}

    override func awakeFromNib() {
        super.awakeFromNib()
        qLabel.textColor = UIColor.white
        
    }

    override func layoutSubviews() {
        super.layoutSubviews()
    }

    @IBAction func buttonAction(_ sender: Any) {
        tapAction()
    }
}
