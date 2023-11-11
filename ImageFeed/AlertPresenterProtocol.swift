//
//  AlertPresenterProtocol.swift
//  ImageFeed
//
//  Created by TATIANA VILDANOVA on 08.11.2023.
//

import Foundation

protocol AlertPresenterProtocol: AnyObject {
    func showError(for model: AlertModel)
}
