//
//  Home.swift
//  CarouselAnimation (iOS)
//
//  Created by Manuel Duarte on 26/2/22.
//

import SwiftUI

struct Home: View {
    
    // MARK: Current index
    @State var currentIndex: Food = foods[0]
    
    var body: some View {
        
        VStack{
            
            let isSmallDevice = getRect().height < 750
            
            Text(currentIndex.itemTitle)
                .font(.largeTitle.bold())
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(height: 100, alignment: .top)
                .padding(.top)
            
            // MARK: Food Details With Image
            HStack(spacing: 10){
                VStack(alignment: .leading, spacing: 25){
                    
                    Label {
                        Text("1 Hour")
                    } icon: {
                        Image(systemName: "flame")
                            .frame(width: 30)
                    }
                    
                    Label {
                        Text("40")
                    } icon: {
                        Image(systemName: "bookmark")
                            .frame(width: 30)
                    }
                    
                    Label {
                        Text("Easy")
                    } icon: {
                        Image(systemName: "bolt")
                            .frame(width: 30)
                    }
                    
                    Label {
                        Text("Safety")
                    } icon: {
                        Image(systemName: "safari")
                            .frame(width: 30)
                    }
                    
                    Label {
                        Text("Healthy")
                    } icon: {
                        Image(systemName: "drop")
                            .frame(width: 30)
                    }
                    
                }
                .font(.title3)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                
                // MARK: Food Image
                GeometryReader{ proxy in
                    
                    let size = proxy.size
                    
                    Image(currentIndex.itemImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipShape(Circle())
                    
                    // MARK: Circle semi border
                        .background(
                            
                            Circle()
                                .trim(from: 0.5, to: 1)
                                .stroke(
                                    LinearGradient(colors: [Color.white, Color.white.opacity(0.1), Color.white.opacity(0.1)], startPoint: .top, endPoint: .bottom)
                                    
                                    ,lineWidth: 0.7
                                )
                                .padding(-15)
                                .rotationEffect(.init(degrees: -90))
                            
                        )
                    
                        .frame(width: size.width, height: size.width * (isSmallDevice ? 1.5 : 1.8))
                        .frame(maxHeight: .infinity, alignment: .center)
                        .offset(x: 70)
                }
                .frame(height: (getRect().width / 2) * (isSmallDevice ? 1.6 : 2))
                
            }
                // MARK: Food Description
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum a lacus eget lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                    .font(.callout)
                    .foregroundColor(Color.gray)
                    .lineSpacing(8)
                    .lineLimit(3)
                    .padding(.vertical)
            
        }
        .padding()
        .foregroundColor(.white)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("BG"))
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Home()
        }
    }
}


extension View {
    // MARK: Screen Size
    func getRect()->CGRect {
        return UIScreen.main.bounds
    }
}
