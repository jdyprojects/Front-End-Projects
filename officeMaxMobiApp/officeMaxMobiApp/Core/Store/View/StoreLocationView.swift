//
//  StoreLocationView.swift
//  officeMaxHomeScreen
//
//  Created by JD Yarborough on 1/13/25.
//

import SwiftUI

struct StoreLocationsView: View {
    @Environment(\.dismiss) private var dismiss
    
    let stores = [
        Store(name: "Office Depot", location: "Aiea, HI", phone: "808 488-9807"),
        Store(name: "Office Depot", location: "Honolulu, HI In Dillingham Plaza", phone: "808 780-3645"),
        Store(name: "OfficeMax", location: "Waipahu, HI In Waikele Center", phone: "808 635-9876"),
        Store(name: "OfficeMax", location: "Kapolei, HI in Kapolei Commons", phone: "808 222-3423"),
        Store(name: "OfficeMax", location: "Honolulu, HI", phone: "808 2252-3400")
    ]
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                // Store list
                ScrollView {
                    VStack(spacing: 0) {
                        ForEach(stores) { store in
                            VStack(alignment: .leading, spacing: 4) {
                                Text(store.name)
                                    .font(.headline)
                                Text(store.location)
                                    .font(.subheadline)
                                Text(store.phone)
                                    .font(.subheadline)
                                    .foregroundColor(.red)
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.vertical, 16)
                            .padding(.horizontal)
                            
                            Divider()
                        }
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Store Locations")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.title2)
                        .foregroundColor(.red)
                        
                }
              
                }
            
            }
        }
    }



#Preview {
    StoreLocationsView()
}
