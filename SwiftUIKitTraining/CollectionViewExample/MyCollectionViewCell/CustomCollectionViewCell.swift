//
//  CustomCollectionViewCell.swift
//  SwiftUIKitTraining
//
//  Created by Ashwin A U on 14/05/23.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    static let identifier = "CustomCollectionViewCell"
    @IBOutlet weak var confirmButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var mainView: UIView!
    weak var delegate: CustomCollectionViewCellProtocol?
    override func awakeFromNib() {
        super.awakeFromNib()
        mainView.layer.cornerRadius = 8
        confirmButton.layer.cornerRadius = 8.0
        deleteButton.layer.cornerRadius = 8.0
    }
    
    @IBAction func onTapConfirmButton(_ sender: Any) {
        delegate?.onTapConfirmButton()
    }
    
    @IBAction func onTapDeleteButton(_ sender: Any) {
        delegate?.onTapDeleteButton()
    }
}

protocol CustomCollectionViewCellProtocol: NSObject {
    func onTapConfirmButton()
    func onTapDeleteButton()
}
