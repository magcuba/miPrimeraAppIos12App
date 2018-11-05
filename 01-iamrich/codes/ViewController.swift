//
//  ViewController.swift
//  01-iamrich
//
//  Created by Magdiel Reyes Leal on 11/1/18.
//  Copyright © 2018 5SecondsApp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var LabelSoyRico: UILabel!
    
    @IBOutlet weak var imageDiamond: UIImageView!
    
    @IBOutlet var UIView: UIView!
    
    @IBOutlet weak var pulsameButtom: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //print("hola q tal")
    }

    @IBAction func ButtomPress(_ sender: UIButton) {
       
    let controller = UIAlertController(title: "SoyRico", message: """
               Soy Rico,
               Me lo Merezco,
               Soy Bueno,
               Tengo Salud y  Exito
             """, preferredStyle: .actionSheet)
        
        let action = UIAlertAction(title: "SoyRico", style: .default) { _ in
            self.UIView.backgroundColor = UIColor.blue
           self.LabelSoyRico.text = "Por Fin Soy Rico"
            self.imageDiamond.image = UIImage(named: "incredible")
            self.LabelSoyRico.textColor = UIColor.red
        
        }
        controller.addAction(action)
        
        let action2 = UIAlertAction(title: "Reset", style: .destructive) { _ in
             self.UIView.backgroundColor = UIColor.purple
            self.LabelSoyRico.text = "SoyRico"
            self.imageDiamond.image = UIImage(named: "ruby")
            self.LabelSoyRico.textColor = UIColor.red
            self.pulsameButtom.setTitle("Pulsame y Seras Rico", for: .normal)
            print("he pulsado el botom reset")
        }
        
        controller.addAction(action2)
        
        let action3 = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        controller.addAction(action3)
  
        self.show(controller, sender: nil)
 
        
       
        
     
        self.LabelSoyRico.text = "Por Fin Soy Rico"
        self.LabelSoyRico.textColor = UIColor.white
        self.LabelSoyRico.font = UIFont.systemFont(ofSize: 50)
        //self.imageDiamond.image = UIImage(named: "incredible")
    self.pulsameButtom.setTitle("Felicidades Eres Rico", for: .normal)
}

}
