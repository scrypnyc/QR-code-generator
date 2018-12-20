//
//  ViewController.swift
//  QRcode
//
//  Created by Alexander Skrypnyk on 12/20/18.
//  Copyright © 2018 AlexanderSkrypnyk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dataInputField: UITextField!
    @IBOutlet weak var containerForQRImage: UIImageView!
    let filterForQRCode = "CIQRCodeGenerator"
    let keyInputMessage = "inputMessage"



    @IBAction func generateQR(_: UIButton) {
    if let textToConvert = dataInputField.text?.data(using: String.Encoding.ascii) {
            print("blabla")
            let filter = CIFilter(name: filterForQRCode)
            filter?.setValue(textToConvert, forKey: keyInputMessage)
            
        let myQRImage = UIImage(ciImage: (filter?.outputImage)!)
            containerForQRImage.image = myQRImage
    } else {
        print("bla bla")
        }
    }

}
