//
//  NewsViewModel.swift
//  Radio_7
//
//  Created by Аня Беликова on 04.10.2023.
//


//// Draft realisaеion parsing JSON
//import SwiftUI
//
//@MainActor
//final class NewsViewModel: ObservableObject {
//    //Mark: Pictures are got from API. var created based on model
//    @Published var picturesNews: News
//
//    private let networkManager = NetworkManager.shared
//
//    func fetchPicture() async {
//        isLoading = true
//        do {
//            users = try await networkManager.fetchPicturesNews()
//            isLoading = false
//        } catch {
//            print(error.localizedDescription)
//        }
//        isLoading = false
//    }
//
//
//    }
//}
//
