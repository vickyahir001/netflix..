//
//  ViewController.swift
//  netflix..
//
//  Created by R90 on 06/06/23.
//

import UIKit
var data = [netflixApp(sectionTyp:
                        "Action Cartoon Moive", imageGalary: ["image1","image2","image3","imag4","image5"]),


            netflixApp(sectionTyp: "Rmontic cartoon Movie", imageGalary: ["images6","images7","images8","images9","images10"]),

netflixApp(sectionTyp: "comedy cartoon Movie", imageGalary: ["images11","images12","images13","images14","images15"])
]
            class ViewController: UIViewController {
   
                @IBOutlet weak var Mytable: UITableView!
                override func viewDidLoad() {
        super.viewDidLoad()
        
    }


            }
extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
         return 200
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, titleForheaderInSection section: Int) -> String? {
        return data[section].sectionTyp
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as! TableViewCell
        cell.collectionView.tag = indexPath.section
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
        view.tintColor = .yellow
    }
}
