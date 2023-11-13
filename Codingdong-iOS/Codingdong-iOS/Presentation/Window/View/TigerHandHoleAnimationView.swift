//
//  TigerHandHoleAnimationView.swift
//  Codingdong-iOS
//
//  Created by 이승용 on 11/11/23.
//

import UIKit
import SnapKit

final class TigerHandHoleAnimationView: UIView {

    lazy var lottieView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        LottieManager.shared.setAnimation(named: "TigerHandHoleAnimation", inView: view)
        return view
    }()
    
    private override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(lottieView)
        lottieView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}
