//
//  HistoryView.swift
//  StartwithSwiftUI
//
//  Created by Tania Cresentia on 31/03/23.
//

import SwiftUI

struct HistoryView: View {
    @State private var date = Date()
    var body: some View {
        DatePicker(
            "Start Date",
            selection: $date,
            displayedComponents: [.date]
        )
        .datePickerStyle(.graphical)
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
