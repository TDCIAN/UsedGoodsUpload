//
//  DetailWriteFormCellViewModel.swift
//  UsedGoodsUpload
//
//  Created by JeongminKim on 2022/01/09.
//

import RxSwift
import RxCocoa

struct DetailWriteFormCellViewModel {
    // View에서 ViewModel로
    let contentValue = PublishRelay<String?>()
}
