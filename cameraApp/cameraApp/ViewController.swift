//
//  ViewController.swift
//  cameraApp
//
//  Created by 西岡亮太 on 2020/05/28.
//  Copyright © 2020 西岡亮太. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var photoImage: UIImageView!
    
    @IBAction func camera(_ sender: Any) {
        
        let camera = UIImagePickerController.SourceType.camera
        
        if UIImagePickerController.isSourceTypeAvailable(camera){
            //print("Camera is available.")
            let picker = UIImagePickerController()
            picker.sourceType = camera
            picker.delegate = self
            self.present(picker, animated: true)
        }
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]){
 
        let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
         self.photoImage.image = image
         dismiss(animated: true, completion: nil)
        //UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        self.dismiss(animated: true)
   }
    
    @IBAction func camera2(_ sender: Any) {
        let camera = UIImagePickerController.SourceType.camera
        
        if UIImagePickerController.isSourceTypeAvailable(camera){
            //print("Camera is available.")
            let picker = UIImagePickerController()
            picker.sourceType = camera
            picker.delegate = self
            self.present(picker, animated: true)
        }
    
    }
    
    @IBAction func share2(_ sender: Any) {
    let controller = UIActivityViewController(activityItems: [photoImage.image!], applicationActivities: nil)
      self.present(controller, animated: true, completion: nil)
    }
    
    @IBAction func showActivityView(_ sender: Any) {
        let controller = UIActivityViewController(activityItems: [photoImage.image!], applicationActivities: nil)
        self.present(controller, animated: true, completion: nil)
    }
    
  
        
    
    

}
