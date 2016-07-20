//
//  ViewController.swift
//  TeST
//
//  Created by Tony Toussaint on 7/20/16.
//  Copyright © 2016 Tony Toussaint. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let pathh = "https://api.github.com/users/tonyyasi/repos"
    
    let url = NSURL(string: "https://api.github.com/users/tonyyasi/repos")
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(NSURL(string: "http://watcher-dashboard.herokuapp.com/api/v1/organizations/icalialabs")!, completionHandler: { (data, response, error) -> Void in
            do{
               let str = try NSJSONSerialization.JSONObjectWithData(data!, options: []) as! NSDictionary
               print(str)
            }
            catch {
                print("json error: \(error)")
            }
        })
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

