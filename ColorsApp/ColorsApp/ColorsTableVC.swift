//
//  ColorsTableVC.swift
//  ColorsApp
//
//  Created by Shaik Ismail on 27/02/24.
//

import UIKit

class ColorsTableVC: UIViewController {
   
    var colors:[UIColor]=[]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorsFun()
        
        
    }
    
    func colorsFun()
    {
        for _ in 0..<50
        {
            colors.append(ThrowColor())
        }
    }
    
    func ThrowColor()->UIColor
    {
        let randomColor = UIColor(red: CGFloat.random(in:0...1),
                                  green: CGFloat.random(in:0...1),
                                  blue: CGFloat.random(in:0...1),
                                  alpha:1)
        return randomColor
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC=segue.destination as! colorsDetail
        destVC.color=sender as? UIColor
    }
    
    
    
}
    
extension ColorsTableVC:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      guard  let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell")
                else
        {
          return UITableViewCell()
      }
        cell.backgroundColor=colors[indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: "ToColorsDetail", sender: color)
    }
}

 
