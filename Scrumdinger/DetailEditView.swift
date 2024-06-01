//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by Suryakant Sharma on 01/06/24.
//

import SwiftUI

struct DetailEditView: View {
    @State private var scrum = DailyScrum.emptyScrum
    @State private var newAttendeeName = ""

    var body: some View {
        Form {
            Section(header: Text("Meeting Info")) {
                TextField("Title", text: $scrum.title)
                HStack {
                    Slider(value: $scrum.lengthInMinutesAsDouble, in: 5...30, step: 1) {
                        Text("Length")
                    }
                    .accessibilityValue("\(scrum.lengthInMinutes) minutes")

                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
                
            }
            
            Section(header: Text("Attendees")) {
                ForEach(scrum.attendees) { attendee in
                    Text(attendee.name)
                }
                .onDelete { indexSet in
                    scrum.attendees.remove(atOffsets: indexSet)
                }
                HStack {
                    TextField("New Attendee", text: $newAttendeeName)
                    Button(action: {
                        withAnimation {
                            scrum.attendees.append(DailyScrum.Attendee(name: newAttendeeName))
                            newAttendeeName = ""
                        }
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .accessibilityLabel("Add attendee")

                    }
                    .disabled(newAttendeeName.isEmpty)
                }
            }
        }
        
    }
}

#Preview {
    DetailEditView()
}
