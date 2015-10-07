//
//  DetailViewController.swift
//  TableViewExample
//
//  Created by Kamal Dandamudi on 10/7/15.
//  Copyright (c) 2015 Kamal Dandamudi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {


    @IBOutlet weak var coureNumberLabel: UILabel!

    @IBOutlet weak var courseNameLabel: UILabel!

    @IBOutlet weak var maxEnrollmentLabel: UILabel!
    @IBOutlet weak var creditHoursLabel: UILabel!
    var detailItem: Course? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail: Course = self.detailItem {
            if let label = self.coureNumberLabel {
                label.text = detail.courseNumber
            }
            if let label = self.courseNameLabel {
                label.text = detail.courseName
            }
            if let label = self.creditHoursLabel {
                label.text = detail.creditHours.description
            }
            if let label = self.maxEnrollmentLabel {
                label.text = detail.maxEnrollment.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

