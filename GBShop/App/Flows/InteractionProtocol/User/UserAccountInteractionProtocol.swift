//
//  UserAccountInteractionProtocol.swift
//  GBShop
//
//  Created by Илья Кадыров on 14.07.2021.
//

protocol UserAccountViewToPresenterProtocol: AnyObject {
    func startGetDataForGenderPicker()
    func startSaveUserData(user: User, extraUserInfo: ExtraUserInfo)
    func startMoveToAllProductsView()

}

protocol UserAccountPresenterToViewProtocol: AnyObject {
    func getBackDataForGenderPicker(dataForGenderPicker: [GenderPickerSetting])
}

protocol UserAccountPresenterToRouterProtocol: PresenterToRouterProtocol,AnyObject {
    func moveToAllProductsView()
}

protocol UserAccountPresenterToInteractorProtocol: AnyObject {
    func getDataForGenderPicker()
    func saveUserData(user: User, extraUserInfo: ExtraUserInfo)
}

protocol UserAccountInteractorToPresenterProtocol: AnyObject {
    func getBackDataForGenderPicker(dataForGenderPicker: [GenderPickerSetting])
    func startShowMessage(text: String, messageType: MessageTypeEnum)
}
