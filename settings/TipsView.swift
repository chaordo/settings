//
//  TipsView.swift
//  settings
//
//  Created by John on 5/23/23.
//

import Foundation
import SwiftUI

struct TipsView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 1) {
                VStack {
                    HeadingView(title: "Troubleshooting")
                    SubheadingView(text: "\n- If you are receiving an error message when submitting a request, it is most likely due to OpenAI's servers being overloaded with requests. Wait a moment and resubmit the request.\n- If you continue to encounter issues, try the following steps:\n    - Restart the app\n    - Check your internet connection\n    - Contact support for further assistance")
                }
                .padding()
                
                VStack{
                    HeadingView(title: "Capabilities")
                    SubheadingView(text: "\n- Remembers what user said earlier in the conversation.\n- Allows user to provide follow-up corrections.\n- Trained to decline inappropriate requests.")
                }
                .padding()
                
                VStack{
                    HeadingView(title: "Limitations")
                    SubheadingView(text: "\n- May occasionally generate incorrect information.\n- May occasionally produce harmful instructions or biased content.\n- Limited knowledge of the world and events after 2021.")
                }
                .padding()
            }
        }
    }
}
struct HeadingView: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.title)
            .fontWeight(.bold)
    }
}

struct SubheadingView: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.body)
            .foregroundColor(.secondary)
            .multilineTextAlignment(.leading)
    }
}

struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView()
    }
}
