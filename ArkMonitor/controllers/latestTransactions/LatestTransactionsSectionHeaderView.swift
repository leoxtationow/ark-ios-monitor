//
//  LatestTransactionsSectionHeaderView.swift
//  ArkMonitor
//
//  Created by Andrew on 2017-09-12.
//  Copyright © 2017 vrlc92. All rights reserved.
//

import UIKit

class LatestTransactionsSectionHeaderView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.white
        
        let timeLabel = UILabel()
        timeLabel.textColor = ArkColors.darkGray
        timeLabel.textAlignment = .center
        timeLabel.text = "Time"
        timeLabel.font = UIFont.systemFont(ofSize: 14.0)
        addSubview(timeLabel)
        
        timeLabel.snp.makeConstraints { (make) in
            make.top.bottom.left.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.4)
        }
        
        let idLabel = UILabel()
        idLabel.textColor = ArkColors.darkGray
        idLabel.textAlignment = .center
        idLabel.text = "Transaction Id"
        idLabel.font = UIFont.systemFont(ofSize: 14.0)
        addSubview(idLabel)
        
        idLabel.snp.makeConstraints { (make) in
            make.top.bottom.equalToSuperview()
            make.left.equalTo(timeLabel.snp.right)
            make.width.equalToSuperview().multipliedBy(0.5)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
