//
//  PriceTextFieldCellViewModel.swift
//  UsedGoodsUpload
//
//  Created by JeongminKim on 2022/01/09.
//

import RxSwift
import RxCocoa

struct PriceTextFieldCellViewModel {
    // ViewModel에서 View로
    let showFreeShareButton: Signal<Bool>
    let resetPrice: Signal<Void>
    
    // View에서 ViewModel로
    let priceValue = PublishRelay<String?>()
    let freeShareButtonTapped = PublishRelay<Void>()
    
    init() {
        self.showFreeShareButton = Observable
            .merge(
                priceValue.map { $0 ?? "" == "0" },
                freeShareButtonTapped.map { _ in false }
            )
            .asSignal(onErrorJustReturn: false)
        
        self.resetPrice = freeShareButtonTapped
            .asSignal(onErrorSignalWith: .empty())
    }
    
}
