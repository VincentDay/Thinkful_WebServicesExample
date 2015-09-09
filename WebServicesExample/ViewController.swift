//
//  ViewController.swift
//  WebServicesExample
//
//  Created by Vince Day on 9/9/15.
//  Copyright (c) 2015 Vince Day. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let manager = AFHTTPRequestOperationManager()
        manager.GET( "http://api.openweathermap.org/data/2.5/forecast/daily?q=London&mode=json&units=metric&cnt=1",
            parameters: nil,
            success:
            { (operation: AFHTTPRequestOperation!,responseObject: AnyObject!) in
                println("Response: " + responseObject.description)
            },
            failure:
            {
                (operation: AFHTTPRequestOperation!,error: NSError!) in
                println("Error: " + error.localizedDescription)
            })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBOutlet weak var forecastLabel: UILabel!

}

