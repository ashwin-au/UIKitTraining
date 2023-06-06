//
//  studentCell.swift
//  SwiftUIKitTraining
//
//  Created by Ashwin A U on 12/05/23.
//

import UIKit

class studentCell: UITableViewCell {
    static let identifier = "studentCell"
    @IBOutlet weak var studentIcon: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var address: UILabel!
   
    override  func awakeFromNib() {
        super.awakeFromNib()
    }
    
}
