//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain: StoryBrain = StoryBrain()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUi()
    }
    
    @IBAction func choice1Pressed(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.titleLabel?.text)
        updateUi()
    }
    
    
    @IBAction func choice2Pressed(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.titleLabel?.text)
        updateUi()
    }
    
    
    func updateUi() {
        let story = storyBrain.currentStory()
        storyLabel.text = story.title
        choice1Button.setTitle(story.choice1, for: .normal)
        choice2Button.setTitle(story.choice2, for: .normal)
    }
    


}

