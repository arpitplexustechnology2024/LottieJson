//
//  ViewController.swift
//  LottieJson
//
//  Created by Arpit iOS Dev. on 09/05/24.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    
    @IBOutlet weak var myView: LottieAnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myView.isHidden = true
        
        myView.contentMode = .scaleAspectFit
        myView.loopMode = .loop
        

    }
    
    
    
    
    @IBAction func NextBtn(_ sender: UIButton) {
        
        self.myView.isHidden = false
        myView.play()
        
        Timer.scheduledTimer(withTimeInterval: 5, repeats: false) { Time in
            
            self.myView.stop()
            self.myView.isHidden = true
            
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "MainViewController") as! MainViewController
            
            self.navigationController?.pushViewController(vc, animated: true)

        }
        
     
        
        
    }
    

}

