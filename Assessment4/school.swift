//
//  school.swift
//  Assessment4
//
//  Created by Kirk Brown on 9/11/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import Foundation

class School {
    let schoolName : String
    let numberOfStudents : Int
    let publicSchool : String?
    let yearBuilt : Int
    
    init(schoolName: String ,numberOfStudents : Int, publicSchool : String?, yearBuilt: Int) {
        self.schoolName = schoolName
        self.numberOfStudents = numberOfStudents
        self.publicSchool = publicSchool
        self.yearBuilt = yearBuilt
    }
    func schoolDescription () {
        print("\(schoolName) was founded in \(yearBuilt) and has \(numberOfStudents) currently in attendance")
        if let school = publicSchool {
            print("this is a public school.")
        }
    }
    
}


//2. Create a HighSchool class that inherits from our base school class. Add a property that will represent a rival highschool. Additionally, add a property that will represent the school mascot.
//
// Add a function called pepRally that will print "\(school name) is the best! \(rival school name) is awful!"
//
// Override the schoolDescription function to make it print "\(school name) is the best in the state since \(the year it was built)! Go \(school mascot)'s!!!"
//
// Create an instance of a highschool and call both the schoolDescription and the pepRally functions.


class HighSchool : School {
    let highSchoolRival : String
    let schoolMascot : String
    
    init(highSchoolRival:String, schoolMascot: String ,schoolName: String, numberOfStudents: Int, publicSchool: String?, yearBuilt: Int) {
        self.highSchoolRival = highSchoolRival
        self.schoolMascot = schoolMascot
        super.init(schoolName: schoolName, numberOfStudents: numberOfStudents, publicSchool: publicSchool, yearBuilt: yearBuilt)
    }
    func pepRally() {
        print("\(schoolName) is the best! \(highSchoolRival) is awful!")
    }
    override func schoolDescription() {
        print("\(schoolName) is the best in the state since \(yearBuilt)! Go \(schoolMascot)'s!!!")
    }


}

class MagicalHighSchool : HighSchool {
    let sizeOfCastle : Int
    let numOfSecretPassages: Int
    
    init(sizeOfCastle: Int, numOfSecretPassages: Int,highSchoolRival: String, schoolMascot: String, schoolName: String, numberOfStudents: Int, publicSchool: String?, yearBuilt: Int) {
        self.sizeOfCastle = sizeOfCastle
        self.numOfSecretPassages = numOfSecretPassages
        super.init(highSchoolRival: highSchoolRival, schoolMascot: schoolMascot, schoolName: schoolName, numberOfStudents: numberOfStudents, publicSchool: publicSchool, yearBuilt: yearBuilt)
    }
    override func pepRally() {
        print("\(schoolName) is the most magical school on earth! It's castle is \(sizeOfCastle) square feet, and it has \(numOfSecretPassages) secret passageways! Hurray!")
    }
    func quidditchMatch() {
        print("Time for the big quidditch game!")
    }
}
