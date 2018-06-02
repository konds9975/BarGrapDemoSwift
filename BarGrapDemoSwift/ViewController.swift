//
//  ViewController.swift
//  BarGrapDemoSwift
//
//  Created by Inkswipe on 6/2/18.
//  Copyright © 2018 Fortune4 Technologies. All rights reserved.
//

import UIKit

struct BarData {
    
    var barHeight : Int!
    var barColor : UIColor!
    var barInfo : String!
}

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return self.barDataArray.count
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = self.barCollection.dequeueReusableCell(withReuseIdentifier: "BarCell", for: indexPath) as! BarCell
        let barData = self.barDataArray[indexPath.row]
        DispatchQueue.main.async
        {
            cell.barView.roundCorners([.topLeft, .topRight], radius: 10)
            cell.barView.backgroundColor = barData.barColor
            cell.infoLbl.text = barData.barInfo
        }
        print(CGFloat(Float(barData.barHeight*170)/100))
        cell.barHeight.constant = CGFloat(Float((barData.barHeight*170)/100)-1)
        cell.layoutIfNeeded()
        return cell
        
    }
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        return CGSize(width: 30, height: collectionView.frame.size.height)
    }
    

    var barDataArray : [BarData] = []
    @IBOutlet weak var barCollection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
       self.barCollection.delegate = self
        self.barCollection.dataSource = self
        
     
        barDataArray.append(BarData(barHeight: 20, barColor: UIColor.red, barInfo: "04 Apr"))
        barDataArray.append(BarData(barHeight: 30, barColor: UIColor.yellow, barInfo: "12 Apr"))
        barDataArray.append(BarData(barHeight: 50, barColor: UIColor.green, barInfo: "19 Apr"))
        barDataArray.append(BarData(barHeight: 90, barColor: UIColor.green, barInfo: "28 Apr"))
        barDataArray.append(BarData(barHeight: 100, barColor: UIColor.green, barInfo: "03 May"))
        barDataArray.append(BarData(barHeight: 47, barColor: UIColor.yellow, barInfo: "09 May"))
        barDataArray.append(BarData(barHeight: 37, barColor: UIColor.red, barInfo: "14 May"))
        
        barDataArray.append(BarData(barHeight: 20, barColor: UIColor.red, barInfo: "04 Apr"))
        barDataArray.append(BarData(barHeight: 30, barColor: UIColor.yellow, barInfo: "12 Apr"))
        barDataArray.append(BarData(barHeight: 50, barColor: UIColor.green, barInfo: "19 Apr"))
        barDataArray.append(BarData(barHeight: 90, barColor: UIColor.green, barInfo: "28 Apr"))
        barDataArray.append(BarData(barHeight: 100, barColor: UIColor.green, barInfo: "03 May"))
        barDataArray.append(BarData(barHeight: 47, barColor: UIColor.yellow, barInfo: "09 May"))
        barDataArray.append(BarData(barHeight: 37, barColor: UIColor.red, barInfo: "14 May"))
        
        
        barDataArray.append(BarData(barHeight: 20, barColor: UIColor.red, barInfo: "04 Apr"))
        barDataArray.append(BarData(barHeight: 30, barColor: UIColor.yellow, barInfo: "12 Apr"))
        barDataArray.append(BarData(barHeight: 50, barColor: UIColor.green, barInfo: "19 Apr"))
        barDataArray.append(BarData(barHeight: 90, barColor: UIColor.green, barInfo: "28 Apr"))
        barDataArray.append(BarData(barHeight: 100, barColor: UIColor.green, barInfo: "03 May"))
        barDataArray.append(BarData(barHeight: 47, barColor: UIColor.yellow, barInfo: "09 May"))
        barDataArray.append(BarData(barHeight: 37, barColor: UIColor.red, barInfo: "14 May"))
        
        barDataArray.append(BarData(barHeight: 20, barColor: UIColor.red, barInfo: "04 Apr"))
        barDataArray.append(BarData(barHeight: 30, barColor: UIColor.yellow, barInfo: "12 Apr"))
        barDataArray.append(BarData(barHeight: 50, barColor: UIColor.green, barInfo: "19 Apr"))
        barDataArray.append(BarData(barHeight: 90, barColor: UIColor.green, barInfo: "28 Apr"))
        barDataArray.append(BarData(barHeight: 100, barColor: UIColor.green, barInfo: "03 May"))
        barDataArray.append(BarData(barHeight: 47, barColor: UIColor.yellow, barInfo: "09 May"))
        barDataArray.append(BarData(barHeight: 37, barColor: UIColor.red, barInfo: "14 May"))
        
    }

   

}

extension UIView {
    
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
    
}
