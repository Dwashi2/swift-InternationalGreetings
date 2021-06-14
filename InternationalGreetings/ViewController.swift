//
//  ViewController.swift
//  InternationalGreetings
//
//  Created by Daniel Washington Ignacio on 14/06/21.
//

/*
 Suppose you have a guest list of students and the country they are from, stored as key-value pairs in a dictionary.

 GUEST_LIST = [
 "Randy": "Germany",
 "Karla": "France",
 "Wendy": "Japan",
 "Norman": "England",
 "Sam": "Argentina"
 ]
 Write a function that takes in a name and returns a name tag, that should read:

 "Hi! I'm [name], and I'm from [country]."
 If the name is not in the dictionary, return:

 "Hi! I'm a guest."
 Examples

 greeting("Randy") ➞ "Hi! I'm Randy, and I'm from Germany."

 greeting("Sam") ➞ "Hi! I'm Sam, and I'm from Argentina."

 greeting("Monti") ➞ "Hi! I'm a guest."
 */

import UIKit

class ViewController: UIViewController {
    
    let GUEST_LIST = [
        "Randy": "Germany",
        "Karla": "France",
        "Wendy": "Japan",
        "Norman": "England",
        "Sam": "Argentina"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(self.greeting("Randy"))
        print(self.greeting("Sam"))
        print(self.greeting("Monti"))
    }

    func greeting(_ name: String) -> String {
        if GUEST_LIST[name] == nil {
            return "Hi! I'm a guest."
        }
        return "Hi! I'm \(name), and I'm from \(GUEST_LIST[name] ?? "no name")."
    }

}

