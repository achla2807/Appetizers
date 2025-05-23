//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Achla Ajay on 03/02/25.
//

import Foundation

final class AppetizerListViewModel: ObservableObject{
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: alertItem?
    @Published var isLoading = false
    func getAppetizers(){
        isLoading = true
        NetworkManager.shared.getAppetizers{  result in
            DispatchQueue.main.async{ [self] in
                isLoading = false
                switch result{
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    switch error{
                        
                    case .invalidURL:
                        alertItem = AlertContext.InvalidURL
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    case .invalidData:
                        alertItem = AlertContext.InvalidData
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}
