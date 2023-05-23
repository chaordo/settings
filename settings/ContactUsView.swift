//
//  ContactUsView.swift
//  settings
//
//  Created by John on 5/23/23.
//

import SwiftUI

struct ContactUsView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 1) {
                VStack {
                    HeadingView(title: "How to Contact Us")
                    SubheadingView(text: "\nIf you have any feedback, suggestions or a bug to report, please contact us.\n\nThe best way to reach us is by email:\n*email address*\n\nWe try to answer emails as quickly as possible, but please be aware that as a small team we can't answer every email right away.")
                }
                .padding()
            }
        }
    }
}

struct ContactUsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactUsView()
    }
}
