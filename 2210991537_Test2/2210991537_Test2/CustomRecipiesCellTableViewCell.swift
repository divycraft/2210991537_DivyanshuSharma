//
//  CustomRecipiesCellTableViewCell.swift
//  2210991537_Test2
//
//  Created by student-2 on 23/11/24.
//

import UIKit

class CustomRecipiesCellTableViewCell: UITableViewCell {

    @IBOutlet weak var RecipeImage: UIImageView!
    @IBOutlet weak var recipieName: UILabel!
    @IBOutlet weak var ingredientLabel: UILabel!
    @IBOutlet weak var caloryLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateCell(recipie: Recipie){
        RecipeImage.image = recipie.image
        recipieName.text = recipie.name
        ingredientLabel.text = recipie.ingredient
        caloryLabel.text = String(recipie.caloryCount)
    }
}
