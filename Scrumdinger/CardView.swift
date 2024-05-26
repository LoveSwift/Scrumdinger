//
//  CardView.swift
//  Scrumdinger
//
//  Created by Suryakant Sharma on 25/05/24.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum

    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)

            Spacer()
            
            HStack {
                Label("\(scrum.attendees.count)",
                      systemImage: "person.3")
                .accessibilityLabel("\(scrum.attendees.count) attendees")

                Spacer()
                
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .padding(.trailing, 20)
                    .accessibilityLabel("\(scrum.lengthInMinutes) minute meeting")
                    .labelStyle(.trailingIcon)
            }
            .font(.caption)
            .foregroundColor(scrum.theme.accentColor)
            Spacer()
        }
    }
}

#Preview {

    CardView(scrum: DailyScrum.sampleData[0])
        .background(DailyScrum.sampleData[0].theme.mainColor)

}

