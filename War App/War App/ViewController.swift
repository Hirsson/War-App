//
//  ViewController.swift
//  War App
//
//  Created by MBP on 17/06/2018.
//  Copyright © 2018 MBP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
  
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: Any) {
        
        
        // Randomize 2 numbers
        let leftRandomNumber = arc4random_uniform(13) + 2
        print("left randomnumber is: \(leftRandomNumber)")
        
        let rightRandomNumber = arc4random_uniform(13) + 2
        print("right random number is: \(rightRandomNumber)")
        
        // Change the image view
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        // Win conditions
        
        // if leftScore == 12 {
            
          //  leftScoreLabel.text = String("WIN")
            
       // }
        
      //  if rightScore == 12 {
            
         //   rightScoreLabel.text = String("WIN")
     //   }
        
        
        
        // Compare the numbers
        if leftRandomNumber > rightRandomNumber {
            
            // Update the score
            leftScore += 1
            
            // Update the label
            leftScoreLabel.text = String(leftScore)
            
    
        }
        else if rightRandomNumber > leftRandomNumber {
            
            
            // Update the score
            rightScore += 1
            
            
            
            // Update the label
            rightScoreLabel.text = String(rightScore)
        }
        else if leftRandomNumber == rightRandomNumber {
            
        }
        
    
        
        
    }
    
    

}
