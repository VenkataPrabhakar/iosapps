//
//  Student.swift
//  StudentCourse
//
//  Created by Takkellapati,Venkata Prabhakar on 3/24/22.
//

import Foundation
struct Student {
    var name = ""
    var sid = ""
    var email = ""
    
    //each student may have several courses and represented in courses array.
    // Courses array will have type of Course object
    // we initialize course array with empty array,
    var courses:[Course] = []
    
} //end of Student struct
//Course has 2 variables: title and sem
struct Course{
    var title = ""
    var sem = ""
} //end of Course struct

//Populating student details using struct
let student1 = Student(name:"Adam",sid:"s2468",email: "s2468@gmail.com",
                     courses:[
                        Course(title:"Mobile Computing",sem:"sp21"),
                        Course(title:"Data Structures",sem:"sp22"),
                        Course(title:"Big Data",sem:"sp22")
                     ])


let student2 = Student(name:"Bob",sid:"s1357",email: "s1357@gmail.com",
                     courses:[
                        Course(title:"Design Patterns",sem:"fa21"),
                        Course(title:"GDP1",sem:"fa21"),
                        Course(title:"Java",sem:"sp21")
                     ])


let student3 = Student(name:"Charlie",sid:"s3690",email: "s3690@gmail.com",
                     courses:[
                        Course(title:"Design Patterns",sem:"fa21"),
                        Course(title:"GDP2",sem:"sp22"),
                        Course(title:"Java",sem:"sp21")
                     ])


// students array we use in the LoginController
let students = [student1,student2,student3]
