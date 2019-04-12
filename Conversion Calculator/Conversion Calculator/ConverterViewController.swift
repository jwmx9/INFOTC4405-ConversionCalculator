//
//  ConverterViewController.swift
//  Conversion Calculator
//
//  Created by John Williams III on 4/9/19.
//  Copyright © 2019 John Williams III. All rights reserved.
//

import UIKit

struct Converter {
    let label: String
    let inputUnit: String
    let outputUnit: String
    
    init(label: String, inputUnit: String, outputUnit: String){
        self.label = label
        self.inputUnit = inputUnit
        self.outputUnit = outputUnit
    }
}


class ConverterViewController: UIViewController {
    
    var converters: [Converter] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let F_to_C = Converter(label:"fahrenheit to celcius",inputUnit:"°F",outputUnit:"°C");
        let C_to_F = Converter(label:"celcius to fahrenheit",inputUnit:"°C",outputUnit:"°F");
        let M_to_K = Converter(label:"miles to kilometers",inputUnit:"mi",outputUnit:"km");
        let K_to_M = Converter(label:"kilometers to miles",inputUnit:"km",outputUnit:"mi");
        
        converters = [F_to_C, C_to_F, M_to_K, K_to_M]

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
