//
//  ProfileCardTableViewCell.swift
//  SwiftUIKitTraining
//
//  Created by Ashwin A U on 26/05/23.
//

import UIKit

class ProfileCardTableViewCell: UITableViewCell {
    static let identifier = "ProfileCardTableViewCell"
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var designationLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func setData(image: String, name: String, designation: String) {
        self.profileImage.image = UIImage(systemName: image)
        self.nameLabel.text = name
        self.designationLabel.text = designation
    }
}
