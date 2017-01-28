//
//  ViewController.swift
//  MiraclePills
//
//  Created by Utkarsh Rastogi on 26/01/17.
//  Copyright © 2017 Utkarsh Rastogi. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var countryLBL: UILabel!
    @IBOutlet weak var countryTF: UITextField!
    @IBOutlet weak var zipTF: UITextField!
    @IBOutlet weak var zipLBL: UILabel!
    @IBOutlet weak var successImg: UIImageView!
    @IBOutlet weak var buynowButton: UIButton!
    @IBOutlet var yourStackView: UIStackView!
    let states = ["U.P", "Maharashtra", "Karnataka","M.P"]
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource=self
        statePicker.delegate=self
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryTF.isHidden = true
        //countryLBL.isHidden = true
        //zipTF.isHidden = true
        //zipLBL.isHidden = true
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        //countryTF.isHidden = false
        //countryLBL.isHidden = false
        //zipTF.isHidden = false
        //zipLBL.isHidden = false
    }
    @IBAction func buynowBtnPressed(_ sender: Any) {
        
    }
    @IBAction func buynowButton(_ sender: Any) {
        
        successImg.isHidden = false
    }
}

