//
//  Recipies.swift
//  2210991537_Test2
//
//  Created by student-2 on 23/11/24.
//

import Foundation
import UIKit

struct Week { //: Codable
    var name :String
    var mealType: [MealType]
}
struct MealType {
    var type:String
    var recipie:[Recipie]
}
struct Recipie{
    var image :UIImage?
    var name:String
    var ingredient :String
    var instruction :String
    var catigory:String
    var caloryCount : Int
}


var weeks:[Week] = [
    Week(name: "Week 1",
         mealType: [MealType(type: "BreakFast", recipie: [Recipie(image: UIImage(named: "cat.jpeg"), name: "paranth", ingredient: "Aloo", instruction: "only when to be in good Mood", catigory: "vegetraion",caloryCount: 78),Recipie(image: UIImage(named: "cat.jpeg"), name: "Bread", ingredient: "Bread", instruction: "When in hurry", catigory: "glutenFree",caloryCount: 56)]),
                    MealType(type: "Lunch", recipie: [Recipie(image:UIImage(named: "cat.jpeg"), name: "Dal", ingredient: "Dal", instruction: "Good and Healthy", catigory: "vegetraion",caloryCount: 92),Recipie(image: UIImage(named: "cat.jpeg"), name: "Green Vegetable", ingredient: "Vegetable Of your Choice", instruction: "Yummy", catigory: "glutenFree",caloryCount: 89)])
    ])
]

//let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
//let archiveURL = documentDirectory.appendingPathComponent("Meal-Tracker").appendingPathExtension("plist")
//let propertyEncode = PropertyListEncoder()
//let endoderWeek = try? propertyEncode.encode(weeks)
//try? endoderWeek?.write(to: archiveURL,options: .noFileProtection)
//let propertyDecoder = PropertyListDecoder()
//if let result = try? Data(contentsOf: archiveURL),let decoderWeek = try? propertyDecoder.decode(Week.self, from: result){
//    print(decoderWeek)
//}

//it is giving error
