//
//  MeetingFooterView.swift
//  Scrumdinger
//
//  Created by Suryakant Sharma on 09/06/24.
//

import SwiftUI

struct MeetingFooterView: View {
    let speakers: [ScrumTimer.Speaker]
    var skipAction: ()->Void
    
    private var speakerNumber: Int? {
        guard let index = speakers.firstIndex(where: { !$0.isCompleted }) else { return nil }
        return index + 1
    }
    
    private var isLastSpeaker: Bool {
//        return speakers.dropLast().allSatisfy($0.isCompleted)
        
        return speakers
               .dropLast()
               .reduce(true) {
               $0 && $1.isCompleted
        }
    }
    
    private var speakerText: String {
        guard let speakerNumber = speakerNumber else { return "No more speakers" }
        return "Speaker \(speakerNumber) of \(speakers.count)"
    }
    
    var body: some View {
        VStack {
            HStack {
                if isLastSpeaker {
                    Text("Last speaker")
                } else {
                    Text(speakerText)
                    Spacer()
                    
                    Button(action: skipAction) {
                        Image(systemName: "forward.fill")
                    }
                    .accessibilityLabel("Next speaker")
                }
            }
        }.padding([.bottom, .horizontal])
    }
}

#Preview {
    MeetingFooterView(speakers: DailyScrum.sampleData[0].attendees.speakers, skipAction: {})
}
