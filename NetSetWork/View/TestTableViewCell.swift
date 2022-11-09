//
//  TestTableViewCell.swift
//  NetSetWork
//
//  Created by sushil Chaudhary on 11/4/22.
//

import UIKit
class TestTableViewCell: UITableViewCell {
    //MARK: - IBoutlet
    @IBOutlet weak var testCollectionView: UICollectionView!
    //MARK: - variables
    var models = [DataModel]()
    var arr1 : [Int] = [];
          var arr2 : [Int] = [];
          var arr3 : [Int] = [];
          var arr4 : [Int] = [];
          var arr5 : [Int] = [];
          var arr6 : [Int] = [];
          var arr7 : [Int] = [];
    
    
    
    //MARK: - TablecellCycles
    override func awakeFromNib() {
        super.awakeFromNib()
        testCollectionView.delegate = self
        testCollectionView.dataSource = self  
    }
    


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    //MARK: - func
   
    

}
    //MARK: -extension
extension TestTableViewCell:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    //DataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        switch (collectionView.tag) {
        
                               case 0:
                                 let cell = testCollectionView.dequeueReusableCell(withReuseIdentifier: "TestCollectionViewCell", for: indexPath) as! TestCollectionViewCell
                                cell.testLbl.layer.borderColor = UIColor.black.cgColor
                                cell.testLbl.layer.borderWidth = 2
                                cell.testLbl.text =   "\(arr1[indexPath.row])"
                                return cell
                               case 1:
                                 let cell = testCollectionView.dequeueReusableCell(withReuseIdentifier: "TestCollectionViewCell", for: indexPath) as! TestCollectionViewCell
                                cell.testLbl.layer.borderColor = UIColor.black.cgColor
                                cell.testLbl.layer.borderWidth = 2
                                cell.testLbl.text =   "\(arr2[indexPath.row])"
                                return cell
                               case 2:
                                 let cell = testCollectionView.dequeueReusableCell(withReuseIdentifier: "TestCollectionViewCell", for: indexPath) as! TestCollectionViewCell
                                cell.testLbl.layer.borderColor = UIColor.black.cgColor
                                                               cell.testLbl.layer.borderWidth = 2
                                cell.testLbl.text =   "\(arr3[indexPath.row])"
                                return cell
                               case 3:
                                 let cell = testCollectionView.dequeueReusableCell(withReuseIdentifier: "TestCollectionViewCell", for: indexPath) as! TestCollectionViewCell
                                cell.testLbl.layer.borderColor = UIColor.black.cgColor
                                                               cell.testLbl.layer.borderWidth = 2
                                
                                cell.testLbl.text =   "\(arr4[indexPath.row])"
                                return cell
                               case 4:
                                 let cell = testCollectionView.dequeueReusableCell(withReuseIdentifier: "TestCollectionViewCell", for: indexPath) as! TestCollectionViewCell
                                cell.testLbl.layer.borderColor = UIColor.black.cgColor
                                                               cell.testLbl.layer.borderWidth = 2
                              
                                cell.testLbl.text =   "\(arr5[indexPath.row])"
                                return cell
                               case 5:
                                let  cell = testCollectionView.dequeueReusableCell(withReuseIdentifier: "TestCollectionViewCell", for: indexPath) as! TestCollectionViewCell
                                cell.testLbl.layer.borderWidth = 2
                                cell.testLbl.text =   "\(arr6[indexPath.row])"
                                return cell
                               case 6:
                                 let cell = testCollectionView.dequeueReusableCell(withReuseIdentifier: "TestCollectionViewCell", for: indexPath) as! TestCollectionViewCell
                                cell.testLbl.layer.borderColor = UIColor.black.cgColor
                                                               cell.testLbl.layer.borderWidth = 2
                                cell.testLbl.text =   "\(arr7[indexPath.row])"
                                return cell
                               default:
                                let cell = testCollectionView.dequeueReusableCell(withReuseIdentifier: "TestCollectionViewCell", for: indexPath) as! TestCollectionViewCell
                                cell.testLbl.layer.borderColor = UIColor.black.cgColor
                                                               cell.testLbl.layer.borderWidth = 2
                                    cell.testLbl.text =   "\(arr7[indexPath.row])"
                                    return cell
                               }
       
        
       
    }
    //Delegate
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        switch (collectionView.tag) {
        case 0:
            let DataDict:[String: String] = ["Data": "\(arr1[indexPath.row])"]
            NotificationCenter.default.post(name:Notification.Name(rawValue:"BackDataNotification"), object: nil, userInfo: DataDict)
        case 1:
            let DataDict:[String: String] =  ["Data": "\(arr2[indexPath.row])"]
            NotificationCenter.default.post(name:Notification.Name(rawValue:"BackDataNotification"), object: nil, userInfo: DataDict)
        case 2:
            let DataDict:[String: String] =  ["Data": "\(arr3[indexPath.row])"]
            NotificationCenter.default.post(name:Notification.Name(rawValue:"BackDataNotification"), object: nil, userInfo: DataDict)
        case 3:
            let DataDict:[String: String] =  ["Data": "\(arr4[indexPath.row])"]
            NotificationCenter.default.post(name:Notification.Name(rawValue:"BackDataNotification"), object: nil, userInfo: DataDict)
        case 4:
            let DataDict:[String: String] =  ["Data": "\(arr5[indexPath.row])"]
            NotificationCenter.default.post(name:Notification.Name(rawValue:"BackDataNotification"), object: nil, userInfo: DataDict)
        case 5:
            let DataDict:[String: String] =  ["Data": "\(arr6[indexPath.row])"]
            NotificationCenter.default.post(name:Notification.Name(rawValue:"BackDataNotification"), object: nil, userInfo: DataDict)
        case 6:
            let DataDict:[String: String] =  ["Data": "\(arr7[indexPath.row])"]
            NotificationCenter.default.post(name:Notification.Name(rawValue:"BackDataNotification"), object: nil, userInfo: DataDict)
        default:
            let DataDict:[String: String] =  ["Data": "\(arr7[indexPath.row])"]
                   NotificationCenter.default.post(name:Notification.Name(rawValue:"BackDataNotification"), object: nil, userInfo: DataDict)
        }
    }
    //AutoFlowLAyout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (testCollectionView.frame.width+30)/4, height:testCollectionView.frame.height-10)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
}
