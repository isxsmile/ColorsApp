//
//  colorsDetail.swift
//  ColorsApp
//
//  Created by Shaik Ismail on 27/02/24.
//

import UIKit

class colorsDetail: UIViewController {
      
    var color:UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor=color ?? UIColor.blue

        
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
