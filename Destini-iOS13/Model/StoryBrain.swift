//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation


struct StoryBrain {
    
    var storyNumber = 0
    let stories: Array<Story> = [
        Story(title: "You see a fork in the road", choice1: "Take a left", choice2: "Take a right"),
        Story(title: "You see a tigger", choice1: "Shout for help", choice2: "Play dead"),
        Story(title: "You find a treasure cheat", choice1: "Open it", choice2: "Check for trap")
    ]
    
    mutating func nextStory(userChoice: String?) -> Void {
        if (userChoice == stories[0].choice1) {
            storyNumber = 1
        } else {
            storyNumber = 2
        }
    }
    
    func currentStory() -> Story {
        return stories[storyNumber]
    }
    
}
