//
//  FAQView.swift
//  settings
//
//  Created by John on 5/23/23.
//

import SwiftUI

struct FAQView: View {
    let faqs: [FAQ] = [
        FAQ(question: "What is the purpose of this app?", answer: "The purpose of this app is to..."),
        FAQ(question: "How do I get started?", answer: "To get started, you need to..."),
        FAQ(question: "Can I customize the settings?", answer: "Yes, you can customize the settings by..."),
    ]
    
    var body: some View {
        List(faqs, id: \.question) { faq in
            VStack(alignment: .leading) {
                Text(faq.question)
                    .font(.headline)
                    .padding(.bottom, 4)
                    .foregroundColor(.red)
                Text(faq.answer)
                    .font(.body)
            }
            .padding(.vertical, 4)
        }
        .navigationTitle("FAQs")
    }
}

struct FAQ: Identifiable {
    let id = UUID()
    let question: String
    let answer: String
}

struct FAQView_Previews: PreviewProvider {
    static var previews: some View {
        FAQView()
    }
}
