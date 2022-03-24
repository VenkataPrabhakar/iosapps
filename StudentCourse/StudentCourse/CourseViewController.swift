//
//  CourseViewController.swift
//  StudentCourse
//
//  Created by Takkellapati,Venkata Prabhakar on 3/24/22.
//

import UIKit

class CourseViewController: UIViewController {

    
       @IBOutlet weak var courseOutlet: UILabel!
       //This variable will hold the courses of the student,
       var coursesArray:[Course] = []
       override func viewDidLoad() {
           super.viewDidLoad()
           //when this screen loads we will loop through the courses and display them
           for course in coursesArray {
               courseOutlet.text = courseOutlet.text! + course.title + "-" + course.sem + "\n"
           }
          
       }
       

       /*
       // MARK: - Navigation
       // In a storyboard-based application, you will often want to do a little preparation before navigation
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           // Get the new view controller using segue.destination.
           // Pass the selected object to the new view controller.
       }
       */


}
