//
//  TestViewController.swift
//  NetSetWork
//
//  Created by sushil Chaudhary on 11/4/22.
//

import UIKit
class TestViewController: UIViewController {
    //MARK: - IBOutlet
    
    @IBOutlet weak var testTableView: UITableView!
    @IBOutlet weak var resultLbl: UILabel!
    
    
    //MARK: -variables
    
    var arr1 : [Int] = [];
       var arr2 : [Int] = [];
       var arr3 : [Int] = [];
       var arr4 : [Int] = [];
       var arr5 : [Int] = [];
       var arr6 : [Int] = [];
       var arr7 : [Int] = [];
    
    func caller(){
           var begin = 1
           var end = 7
           var countarray = 1;
           
           
           func CallTwo(){
           for i in begin...end{
               switch (countarray) {
                       case 1:
                           arr1.append(i)
                        
                       case 2:
                           arr2.append(i)
                       case 3:
                           arr3.append(i)
                       case 4:
                           arr4.append(i)
                       case 5:
                           arr5.append(i)
                       case 6:
                           arr6.append(i)
                       case 7:
                           arr7.append(i)
                       default:
                           break
                       }
              print(i, separator: " ", terminator: " ")
           }
           }
           
           for counter in 1...7{
               print("\n")
           CallTwo()
               
           begin = begin+7
           end = end+7
           countarray = countarray + 1
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                         
                        
                        self.testTableView.reloadData()
                    })
           }
        
       }
    
    //MARK: - LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()
        caller()
        testTableView.delegate = self
        testTableView.dataSource = self
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        NotificationCenter.default.addObserver(self, selector: #selector(DidTapBackData(_:)), name:.BackDataNotification, object: nil)
    }
    //MARK: - IBAction
    //MARK: - Objc func
    @objc func DidTapBackData(_ notification: NSNotification){
        if let data = notification.userInfo?["Data"] as? String {
        // do something with your image
          resultLbl.text = "\(String(describing:data))"
        }
    }
}
    //MARK: - extension
extension TestViewController:UITableViewDelegate,
                                    UITableViewDataSource{
    //DataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = testTableView.dequeueReusableCell(withIdentifier: "TestTableViewCell") as! TestTableViewCell
        cell.testCollectionView.tag = indexPath.row
        cell.arr1.append(contentsOf: self.arr1)
        cell.arr2.append(contentsOf: self.arr2)
        cell.arr3.append(contentsOf: self.arr3)
        cell.arr4.append(contentsOf: self.arr4)
        cell.arr5.append(contentsOf: self.arr5)
        cell.arr6.append(contentsOf: self.arr6)
        cell.arr7.append(contentsOf: self.arr7)
        cell.testCollectionView.reloadData()
        return cell
    }
    //Delegate
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140.0
    }
}
