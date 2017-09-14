//
//  ForgedBlockTableViewCell.swift
//  ArkMonitor
//
//  Created by Andrew on 2017-09-12.
//  Copyright © 2017 vrlc92. All rights reserved.
//

import UIKit

class ForgedBlockTableViewCell: UITableViewCell {
    
    var heightLabel  : UILabel!
    var timeLabel   : UILabel!
    var feeLabel    : UILabel!
    var rewardLabel : UILabel!

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = ArkPalette.secondaryBackgroundColor
        selectionStyle  = .none
        
        heightLabel = UILabel()
        heightLabel.textColor = ArkPalette.textColor
        heightLabel.textAlignment = .center
        heightLabel.font = UIFont.systemFont(ofSize: 14.0, weight: .light)
        addSubview(heightLabel)
        
        heightLabel.snp.makeConstraints { (make) in
            make.top.bottom.left.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.3)
        }
        
        timeLabel = UILabel()
        timeLabel.textColor = ArkPalette.textColor
        timeLabel.textAlignment = .center
        timeLabel.font = UIFont.systemFont(ofSize: 14.0, weight: .light)
        addSubview(timeLabel)
        
        timeLabel.snp.makeConstraints { (make) in
            make.top.bottom.equalToSuperview()
            make.left.equalTo(heightLabel.snp.right)
            make.width.equalToSuperview().multipliedBy(0.3)
        }
        
        feeLabel = UILabel()
        feeLabel.textColor = ArkPalette.highlightedTextColor
        feeLabel.textAlignment = .center
        feeLabel.font = UIFont.systemFont(ofSize: 14.0, weight: .light)
        addSubview(feeLabel)
        
        feeLabel.snp.makeConstraints { (make) in
            make.top.bottom.equalToSuperview()
            make.left.equalTo(timeLabel.snp.right)
            make.width.equalToSuperview().multipliedBy(0.2)
        }
        
        rewardLabel = UILabel()
        rewardLabel.textColor = ArkPalette.highlightedTextColor
        rewardLabel.textAlignment = .center
        rewardLabel.font = UIFont.systemFont(ofSize: 14.0, weight: .light)
        addSubview(rewardLabel)
        
        rewardLabel.snp.makeConstraints { (make) in
            make.top.bottom.equalToSuperview()
            make.left.equalTo(feeLabel.snp.right)
            make.width.equalToSuperview().multipliedBy(0.2)
        }
        
        let seperator = UIView()
        seperator.backgroundColor = ArkPalette.tertiaryBackgroundColor
        addSubview(seperator)
        seperator.snp.makeConstraints { (make) in
            make.left.right.bottom.equalToSuperview()
            make.height.equalTo(0.5)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func update(_ block: Block) {
        heightLabel.text = String(block.height)
        timeLabel.text   = Utils.getTimeAgo(timestamp: Double(block.timestamp))
        feeLabel.text    = String(Utils.convertToArkBase(value: Int64(block.totalFee)))
        rewardLabel.text = String(Utils.convertToArkBase(value: Int64(block.reward)))
    }
}
