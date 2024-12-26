//
//  CardView.swift
//  startap
//
//  Created by Ksenia Svidunovich on 13.12.2024.
//

import SwiftUI

struct Card: Identifiable, Hashable {
    var id = UUID()
    var title: String
    var description: String
    var tags: [String]
    var image: String
}

struct CardView: View {
    var card: Card
    var body: some View {
        VStack(alignment: .leading) {
            Text (card.title)
                .font(.headline)
            Text (card.description)
                .font(.subheadline)
                .lineLimit(2)
                .padding (.top, 5)
            HStack {
                ForEach(card.tags, id: \.self) { tag in
                    Text(tag)
                        .font(.caption)
                        .padding(5)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(5)
                }
            }
            .padding(.top, 5)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

struct CardListView: View {
    @State private var cards: [Card] = []

    var body: some View {
        List {
            ForEach(cards) { card in
                CardView(card: card)
            }
            .onDelete(perform: deleteCards)
        }
    }

    private func deleteCards(at offsets: IndexSet) {
        cards.remove(atOffsets: offsets)
    }
}


//#Preview {
//    CardView()
//}
