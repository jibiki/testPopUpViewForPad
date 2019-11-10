//
//  PopoverNavigationController.swift
//  testPopUpViewForPad
//
//  Created by 地引秀和 on 2019/11/10.
//  Copyright © 2019 Jibiki Works. All rights reserved.
//

import UIKit

class PopoverNavigationController: UINavigationController {

    var items = [String]()
    
    var selectedRows = Set<Int>()
    
    var completion: ((_ selectedRows: Set<Int>) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
