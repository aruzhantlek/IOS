//
//  Constants.swift
//  MovieApplication
//
//  Created by Aruzhan Tlek on 14.03.2023.
//

import Foundation

struct Constants {
    
    struct Identifiers {
        static let categoryCollectionViewCell = "CategoryCollectionViewCell"
        static let trendingCollectionViewCell = "TrendingCollectionViewCell"
        static let categoryTableViewCell = "CategoryTableViewCell"
        static let movieCollectionViewCell = "MovieCollectionViewCell"
    }
    
    struct Values {
        
    }
    
    struct Colors {
        
    }
}

enum Category: String, CaseIterable {
    case all = "🔥All"
    case streaming = "🎬Streaming"
    case onTV = "📺On TV"
    case inTheaters = "🍿In Theaters"
}

