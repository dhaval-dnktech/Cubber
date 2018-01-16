//
//  RequestedContactCell.swift
//  Cubber
//
//  Created by Vyas Kishan on 28/07/16.
//  Copyright © 2016 DNKTechnologies. All rights reserved.
//

import UIKit

protocol PhoneContactCellDelegate {
    func btnPhoneContactCell_CheckBoxAction(_ button: UIButton)
}

class PhoneContactCell: UITableViewCell {

    //MARK: PROPERTIES
    @IBOutlet var lblMobileNo: UILabel!
    @IBOutlet var lblName: UILabel!
    @IBOutlet var btnCheckBox: UIButton!
    var delegate: PhoneContactCellDelegate! = nil
    
    //MARK: VIEW METHODS
    override func awakeFromNib() {
        super.awakeFromNib()
        
//        var image: UIImage = UIImage(named: IMAGE_UNCHECKED_RADIO)!
//        var imageSelected: UIImage = UIImage(named: IMAGE_CHECKED_RADIO)!
//        
//        let width: Float = 21
//        image = DesignModel.resizeImageByWidth(image, width: CGFloat(width))
//        imageSelected = DesignModel.resizeImageByWidth(imageSelected, width: CGFloat(width))
//        
//        self.btnCheckBox.setImage(image, for: UIControlState());
//        self.btnCheckBox.setImage(imageSelected, for: UIControlState.selected);
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    //MARK: UIBUTTON ACTION
    @IBAction func btnCheckBoxAction(_ sender: UIButton) {
        self.delegate.btnPhoneContactCell_CheckBoxAction(sender)
    }
}
