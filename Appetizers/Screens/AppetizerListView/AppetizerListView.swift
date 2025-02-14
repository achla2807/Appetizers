//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Achla Ajay on 02/02/25.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject var viewModel = AppetizerListViewModel()
    @State private var isShowingDetail=false
    
    var body: some View {
        ZStack{
            NavigationView{
                List(viewModel.appetizers){ appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            isShowingDetail = true
                        }
                    
                }.navigationTitle("🍟Appetizers")
            }
            .onAppear(){
                viewModel.getAppetizers()
            }
            
            if isShowingDetail{
                AppetizerDetailView(appetizer: MockData.sampleAppetizer)
            }
            
            if viewModel.isLoading{
                LoadingView()
            }
                
        }
        .alert(item: $viewModel.alertItem){ alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton )
        }
    }
}

#Preview {
    AppetizerListView()
}
