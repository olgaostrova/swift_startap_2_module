//
//  ForumView.swift
//  startap
//
//  Created by Ksenia Svidunovich on 27.10.2024.
//

import SwiftUI

struct ForumView: View {
    
    @State private var cards: [Card] = [
        Card(title: "Card 1", description: "Description for card 1", tags: ["Tag1", "Tag2"], image: "CardIm1"),
    Card(title: "Card 2", description: "Description for card 2", tags: ["Предпренимательство"], image: "CardIm2"),
    ]
    
    @State private var showModal = false
    @State private var selectedTag: String = "All"
    @State private var searchText: String = ""
    var filteredCards: [Card] {
        let filteredByTag = selectedTag == "All"
        ? cards
        : cards.filter { $0.tags.contains(selectedTag) }
        
        if searchText.isEmpty {
            return filteredByTag
        } else {
            return filteredByTag.filter {
                $0.title.contains(searchText) || $0.description.contains(searchText)
            }
        }
    }
    
  var body: some View {
              NavigationView {
                  VStack {
                      Picker("Filter by Tag", selection: $selectedTag) {
                          Text("All").tag("All")
                          ForEach(cards.flatMap { $0.tags }, id: \.self) { tag in
                              Text(tag).tag(tag)
                          }
                      }
                      .pickerStyle(SegmentedPickerStyle())
                      .padding()
                      
                      TextField ("Search", text: $searchText)
                      .padding()
                      .background (Color(.secondarySystemBackground))
                      .cornerRadius(10)
                      .padding(.horizontal)
                      
                      List {
                          ForEach(filteredCards) { card in
                              CardView(card: card)
                                  .onTapGesture {}
//                                  .onDelete(perform: deleteCards)
                          }
                      }
                      .listStyle(.plain)
                      .navigationBarItems (trailing: Button (action: {
                          showModal.toggle()
                      }) {
                          Image(systemName: "plus")
                      })
                      .sheet (isPresented: $showModal) {
                          AddCardView(cards: $cards)
                      }
                  }
              }
          }
        }


struct AddCardView: View {
    @Binding var cards: [Card]
    @State private var title: String = ""
    @State private var description: String = ""
    @State private var tags: String = ""
    @State private var image: String = ""
    var body: some View {
        NavigationView {
            Form {
                Section (header: Text("Информация поста")) {
                    TextField("Заголовок", text: $title)
                    TextField("Описание", text: $description)
                    TextField("Теги (резделенные запятой)", text: $tags)
                }
                Button("Добавить пост") {
                    let tagList = tags.split(separator: ",").map {
                        String($0).trimmingCharacters (in: .whitespaces)
                    }
                    let newCard = Card(title: title, description: description, tags: tagList, image: image)
                    cards.append(newCard)
                }
            }
            .navigationBarTitle("Что у вас нового?")
            .navigationBarItems (trailing: Button("Готово") {
            })
        }
    }
}
#Preview {
    ForumView()
}
