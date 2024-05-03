//
//  DetailPresenter.swift
//  MVP-Level One
//
//  Created by Александр Печинкин on 03.05.2024.
//

import Foundation

protocol DetailViewProtocol: class {
    
    func setComment(comment: Comment?)
}

protocol DetailViewPresenterProtocol: class {
    
    init(view: DetailViewProtocol, networkService: NetworkServiceProtocol, comment: Comment?)
    func setComment()
}

class DetailPresenter: DetailViewPresenterProtocol {
    
    weak var view: DetailViewProtocol?
    let networkService: NetworkServiceProtocol
    var comment: Comment?
    
    required init(view: any DetailViewProtocol, networkService: any NetworkServiceProtocol, comment: Comment?) {
        self.view = view
        self.networkService = networkService
        self.comment = comment
    }
    
    public func setComment() {
        self.view?.setComment(comment: comment)
    }
    
}
