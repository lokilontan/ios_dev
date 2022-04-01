//
//  GroupCardView.swift
//  group
//
//  Created by Vladimir Plagov on 3/31/22.
//

import SwiftUI

struct GroupCardView: View {
    var groupName = "New Group"
    var groupLabelColor: Color = .green
    var hstackSpacing: CGFloat = 0
    var body: some View {
        HStack(spacing: 0){
            groupLabelColor
                .frame(width: 10)
            VStack(alignment: .leading,
                   spacing: hstackSpacing){
                HStack{
                    //icons
                    Image(systemName: "shippingbox")
                    Image(systemName: "calendar")
                    Image(systemName: "exclamationmark.2")
                        .foregroundColor(.red)
                }
                Text(groupName)
                    .fontWeight(.bold)
                Spacer()
                HStack{
                    Spacer()
                    Image(systemName: "chevron.right")
                }
            }
            .padding()
        }
        .background(Color.gray.opacity(0.2))
        .cornerRadius(10)
    }
}

struct GroupCardView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
//        GroupCardView()
//            .frame(width: 200, height:150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//            .border(Color.red, width: 0)
        
            GroupCardView()
                .frame(width: 200, height:150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            GroupCardView()
                .frame(width: 300, height:150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            GroupCardView(groupLabelColor: .red)
                .frame(width: 200, height:150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            GroupCardView(groupName: "ECS 198F")
                .frame(width: 100, height:150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        
        }
        
    }
}
