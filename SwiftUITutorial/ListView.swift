//
//  ListView.swift
//  SwiftUITutorial
//
//  Created by 1900822 on 2021/7/4.
//

import SwiftUI

struct ListView: View {
    private var restaurants = [ Restaurant(name: "Cafe Deadend", image: "cafedeadend"),
                                Restaurant(name: "Homei", image: "homei"),
                                Restaurant(name: "Teakha", image: "teakha"),
                                Restaurant(name: "Cafe Loisl", image: "cafeloisl"),
                                Restaurant(name: "Petite Oyster", image: "petiteoyster"),
                                Restaurant(name: "For Kee Restaurant", image: "forkeerestaurant"),
                                Restaurant(name: "Po's Atelier", image: "posatelier"),
                                Restaurant(name: "Bourke Street Bakery", image: "bourkestreetbakery"),
                                Restaurant(name: "Haigh's Chocolate", image: "haighschocolate"),
                                Restaurant(name: "Palomino Espresso", image: "palominoespresso"),
                                Restaurant(name: "Upstate", image: "upstate"),
                                Restaurant(name: "Traif", image: "traif"),
                                Restaurant(name: "Graham Avenue Meats And Deli", image: "grahamavenuemeats"),
                                Restaurant(name: "Waffle & Wolf", image: "wafflewolf"),
                                Restaurant(name: "Five Leaves", image: "fiveleaves"),
                                Restaurant(name: "Cafe Lore", image: "cafelore"),
                                Restaurant(name: "Confessional", image: "confessional"),
                                Restaurant(name: "Barrafina", image: "barrafina"),
                                Restaurant(name: "Donostia", image: "donostia"),
                                Restaurant(name: "Royal Oak", image: "royaloak"),
                                Restaurant(name: "CASK Pub and Kitchen", image: "caskpubkitchen")
    ]
    
    var body: some View {
        List(restaurants, id: \.id) { restaurant in
            FullImageRow(restaurant: restaurant)
        }
//        List(restaurants, id: \.id) { restaurant in
//            BasicImageRow(restaurant: restaurant)
//        }
    }
}

struct Restaurant {
    var id = UUID()
    var name: String
    var image: String
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView().preferredColorScheme(.dark)
    }
}

struct BasicImageRow: View {
    var restaurant: Restaurant
    
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Image(restaurant.image)
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(5.0)
            
            Text(restaurant.name)
                .font(.system(.body, design: .rounded))
                .italic()
                .minimumScaleFactor(0.5)
        }
    }
}

struct FullImageRow: View {
    var restaurant: Restaurant
    
    var body: some View {
        ZStack {
            Image(restaurant.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .cornerRadius(10)
                .overlay(
                    Rectangle()
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        .opacity(0.2)
                )
            
            Text(restaurant.name)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(.white)
        }
    }
}
