//
//  AllProductPresenter.swift
//  GBShop
//
//  Created by Илья Кадыров on 17.07.2021.
//

class AllProductPresenter {

    private let interactor: AllProductPresenterToInteractorProtocol
    private let router: AllProductPresenterToRouterProtocol
    private weak var controller: AllProductPresenterToViewProtocol?

    init(interactor: AllProductPresenterToInteractorProtocol,
         router: AllProductPresenterToRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }

    func setController(controller: AllProductPresenterToViewProtocol) {
        self.controller = controller
    }
}

extension AllProductPresenter: AllProductViewToPresenterProtocol {
    func startGetAllProduct() {
        self.interactor.getAllProduct()
    }

}

extension AllProductPresenter: AllProductInteractorToPresenterProtocol {
    func getAllProductSuccess(products: [Product]) {
        self.controller?.getAllProduct(products: products)
    }

    func startShowMessage(text: String, messageType: MessageTypeEnum) {
        self.router.showMessage(text: text, messageType: messageType)
    }

}
