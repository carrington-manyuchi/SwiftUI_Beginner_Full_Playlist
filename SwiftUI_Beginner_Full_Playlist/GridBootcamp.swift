//
//  GridBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/05.
//

import SwiftUI

struct GridBootcamp: View {
    
//    let columns: [GridItem] = [
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(75), spacing: nil, alignment: nil),
//        GridItem(.fixed(100), spacing: nil, alignment: nil),
//        GridItem(.fixed(75), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//    ]
    
//    let columns: [GridItem] = [
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//    ]
    
//    let columns: [GridItem] = [
//        GridItem(.adaptive(minimum: 50, maximum: 300), spacing: nil, alignment: nil),
//        GridItem(.adaptive(minimum: 50, maximum: 300), spacing: nil, alignment: nil)
//    ]
    
        let columns: [GridItem] = [
            GridItem(.flexible(), spacing: 6, alignment: nil),
            GridItem(.flexible(), spacing: 6, alignment: nil),
            GridItem(.flexible(), spacing: 6, alignment: nil),
        ]
    
    var body: some View {
        
        ScrollView {
            
//            Rectangle()
//                .fill(Color.white)
//                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders],
                      content: {
                          
                          Section {
                              ForEach(0..<7) { index in
                                  Rectangle()
                                      .frame(height: 150)
                              }
                          } header: {
                              Text("Section 1")
                                  .foregroundStyle(.white)
                                  .font(.largeTitle)
                                  .padding()
                                  .frame(maxWidth: .infinity)
                                  .background(Color.blue)
                          }
                          
                          Section {
                              ForEach(0..<15) { index in
                                  Rectangle()
                                      .fill(Color.green)
                                      .frame(height: 150)
                                     
                              }
                          } header: {
                              Text("Section 2")
                                  .foregroundStyle(.white)
                                  .font(.largeTitle)
                                  .padding()
                                  .frame(maxWidth: .infinity)
                                  .background(Color.blue)
                          }

                
            })
            
//            LazyVGrid(columns: columns) {
//                
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .frame(height: 150)
//                }
//            }
        }
    }
}

#Preview {
    GridBootcamp()
}
