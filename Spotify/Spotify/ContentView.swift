//
//  ContentView.swift
//  Spotify
//
//  Created by Turma01-19 on 18/02/25.
//

import SwiftUI

struct Song: Identifiable {
    var id: Int
    var name: String
    var artist: String
    var capa: String
}

struct ContentView: View {
    @State private var arrayMusica = [
        Song(id: 1, name: "Não deixe o Mar te engolir", artist: "Charlie Brown jr", capa: "https://i.scdn.co/image/ab67616d0000b27318d6f80313da2f8d1c727d45"),
        Song(id: 2, name: "Gold Digger", artist: "Kanye West, Jamie Foxx", capa: "https://cdn-images.dzcdn.net/images/cover/71e616398b926d66f7c90ae35c495e7a/0x1900-000000-80-0-0.jpg"),
        Song(id: 3, name: "ASTROTHUNDER", artist: "Travis Scott", capa: "https://i.scdn.co/image/ab67616d0000b273072e9faef2ef7b6db63834a3"),
        Song(id: 4, name: "So fresh, So Clean", artist: "Outkast", capa: "https://cdn-images.dzcdn.net/images/cover/646d6414a24faaccf67c1d7e01f7d095/1900x1900-000000-80-0-0.jpg"),
        Song(id: 5, name: "Réus", artist: "Filipe Ret", capa: "https://i.scdn.co/image/ab67616d0000b273b8ef3d521b8d2e8342562961"),
        Song(id: 6, name: "Hi'tEm Up - Single Version", artist: "Tupac", capa: "https://upload.wikimedia.org/wikipedia/pt/f/fb/Greatest_Hits_Tupac_Shakur.jpg"),
        Song(id: 7, name: "Me dê Motivo", artist: "Tim Maia", capa: "https://i.scdn.co/image/ab67616d0000b27328c29e996c47f05df839c585")
    ]

    @State private var isEditing: Bool = false
    @State private var selectedSong: Song? = nil

    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(colors: [.blue, .black],
                               startPoint: .top,
                               endPoint: .center)
                .edgesIgnoringSafeArea(.all)

                VStack {
                    VStack {
                        Image("bruxo")
                            .resizable()
                            .frame(width: 300, height: 200, alignment: .bottom)

                        Text(" BruxoSongs ")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundStyle(.white)
                            .font(.title)

                    }

                    HStack {
                        Image("cr7")
                            .resizable()
                            .frame(width: 30, height: 60, alignment: .bottom)
                            .clipShape(Circle())

                        Text("Lg7")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundStyle(.white)
                            .font(.title3)
                    }

                    VStack {
                        ForEach(arrayMusica) { index in
                            NavigationLink(destination: TelaMusica(x: index)) {
                                HStack {
                                    AsyncImage(url: URL(string: index.capa)) { image in
                                        image
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                    } placeholder: {
                                        Color.gray
                                    }
                                    .frame(width: 50, height: 50, alignment: .leading)

                                    VStack(alignment: .leading) {
                                        Text(index.name)
                                            .foregroundStyle(.white)
                                        Text(index.artist)
                                            .foregroundStyle(.white)
                                            .font(.footnote)
                                    }
                                    Spacer()

                                    Button(action: {
                                        selectedSong = index
                                        isEditing = true
                                    }) {
                                        Image(systemName: "ellipsis")
                                            .foregroundColor(.white)
                                    }

                                }.frame(maxWidth: .infinity, alignment: .leading)
                            }
                        }
                    }
                }
            }
        }
        .sheet(isPresented: $isEditing) {
            if let song = selectedSong {
                EditSongView(capaURL: $arrayMusica[arrayMusica.firstIndex(where: { $0.id == song.id })!].capa, isPresented: $isEditing)
            }
        }
    }
}

struct EditSongView: View {
    @Binding var capaURL: String
    @Binding var isPresented: Bool
    @State private var newURL: String = ""

    var body: some View {
        VStack {
            Text("Editar URL da Capa")
                .font(.headline)
            TextField("URL", text: $newURL)
                .padding()
            HStack {
                Button("Salvar") {
                    capaURL = newURL
                    isPresented = false
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                Button("Cancelar") {
                    isPresented = false
                }
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(8)
            }
        }.padding()
        .onAppear {
            newURL = capaURL
        }
    }
}

#Preview {
    ContentView()
}
