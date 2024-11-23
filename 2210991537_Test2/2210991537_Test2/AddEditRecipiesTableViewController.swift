//
//  AddEditRecipiesTableViewController.swift
//  2210991537_Test2
//
//  Created by student-2 on 23/11/24.
//

import UIKit

class AddEditRecipiesTableViewController: UITableViewController ,UIImagePickerControllerDelegate,UINavigationControllerDelegate{

    @IBOutlet weak var recipieImageView: UIImageView!
    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var ingrediantLabel: UITextField!
    @IBOutlet weak var instructioLabel: UITextField!
    @IBOutlet weak var categoryLabel: UITextField!
    @IBOutlet weak var caloryLabel: UITextField!
    var recipie:Recipie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        recipie = Recipie(image: recipieImageView.image ?? nil , name: nameLabel.text ?? "Na", ingredient: ingrediantLabel.text ?? "Na", instruction: instructioLabel.text ?? "Na", catigory: categoryLabel.text ?? "Na", caloryCount: Int(caloryLabel.text!) ?? -1)
        
    }
    init?(coder :NSCoder,recipie:Recipie?){
        self.recipie = recipie
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func updateUI(){
        guard let recipie = recipie else {return}
        recipieImageView.image = recipie.image
        nameLabel.text = recipie.name
        ingrediantLabel.text = recipie.ingredient
        instructioLabel.text = recipie.instruction
        categoryLabel.text = recipie.catigory
        caloryLabel.text = String(recipie.caloryCount)
    }
    
    @IBAction func sahreButtontapped(_ sender: Any) {
        guard let image = recipieImageView.image else {return}
        let activityViewController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        present(activityViewController, animated: true, completion: nil)
    }
    @IBAction func imageIsTapped(_ sender: Any) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        let alertController = UIAlertController(title: "Chose Image Source", message: nil, preferredStyle: .actionSheet)
        let cancleAction = UIAlertAction(title: "Cancle", style: .cancel, handler: nil)
        alertController.addAction(cancleAction)
        
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            let photoLibraryAction = UIAlertAction(title: "Photo Library",style: .default,handler: {
                action in print("photo library opened")
                imagePicker.sourceType = .photoLibrary
                self.present(imagePicker,animated: true,completion: nil)
            })
            alertController.addAction(photoLibraryAction)
        }
        present(alertController,animated: true,completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[.originalImage] as? UIImage else {return}
        recipieImageView.image = selectedImage
        dismiss(animated: true,completion: nil)
    }
    

    @IBAction func textFieldChanged(_ sender: Any) {
        recipie?.name = nameLabel.text ?? "Na"
        recipie?.image = recipieImageView.image 
        recipie?.ingredient = ingrediantLabel.text ?? "Na"
        recipie?.instruction = instructioLabel.text ?? "Na"
        recipie?.catigory = categoryLabel.text ?? "Na"
        recipie?.caloryCount = Int(caloryLabel.text!) ?? -1
//        recipie = Recipie(image: recipieImageView.image , name: nameLabel.text ?? "Na", ingredient: ingrediantLabel.text ?? "Na", instruction: instructioLabel.text ?? "Na", catigory: categoryLabel.text ?? "Na", caloryCount: Int(caloryLabel.text!) ?? -1)
    }
    
}
