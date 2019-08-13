//
//  AddPhotoViewController.swift
//  ViewFinder
//
//  Created by Alencia on 8/13/19.
//  Copyright © 2019 Alencia. All rights reserved.
//

import UIKit

class AddPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    

    var imagePicker = UIImagePickerController()
    
    @IBAction func camera(_ sender: UIButton) {
        imagePicker.sourceType = .camera
        present(imagePicker, animated:true, completion: nil)
    }
    
    
    @IBAction func Albums(_ sender: UIButton) {

            imagePicker.sourceType = .photoLibrary
            
            present (imagePicker, animated: true, completion: nil)
    }
    
    @IBOutlet weak var displayImage: UIImageView!
   
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
   
if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            displayImage.image = selectedImage
        }
        imagePicker.dismiss(animated: true, completion: nil)
    }
    
override func viewDidLoad() {
    super.viewDidLoad()
    imagePicker.delegate = self

}
    }

