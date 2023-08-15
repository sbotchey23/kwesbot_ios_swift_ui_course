//
//  CustomListRowView.swift
//  Hike
//
//  Created by Kwesi A Botchey on 15/08/2023.
//

import SwiftUI

struct CustomListRowView: View {
    // MARK: - PROPERTIES
    
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String
    @State var rowTintColor: Color
    
    var body: some View {
        LabeledContent{
            // Content
            Text("Hike")
                .foregroundColor(.primary)
                .fontWeight(.heavy)
        } label: {
            // Label
            HStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(.blue)
                    Image(systemName: "apps.iphone")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                Text("Application")
            }
        }
    }
}

struct CustomListRowView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            CustomListRowView()
        }
    }
}
