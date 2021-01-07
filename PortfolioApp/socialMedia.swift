//
//  socialMedia.swift
//  PortfolioApp
//
//  Created by Philipp on 04.01.2021.
//

import Foundation
import SwiftUI
import MessageUI

struct mailIcon: View {
    var body: some View {
        Text("Hello, world!")
    }
}

struct mediaIcon: View {
    @Environment(\.openURL) var openURL
    @State private var showingMail = false
    var image: Image
    var link: URL
    init (image: Image, link: URL) {
        self.image = image
        self.link = link
    }
    var body: some View {
        image
            .resizable()
            .frame(width: 40, height: 40)
            .onTapGesture {
                if image == mailImage {
                    self.showingMail.toggle()
                } else {
                    openURL(link)
                }
            }
            .sheet(isPresented: $showingMail) {
                        MailComposeViewController(toRecipients: [mailAddress], mailBody: "") {
                            // Did finish action
                        }
            }
            .padding(.leading, 10)
            .padding(.trailing, 10)
    }
}

struct socialMediaBar: View {
    var body: some View {
        HStack {
            mediaIcon(image: githubImage, link: githubURL!)
            mediaIcon(image: linkedinImage, link: linkedinURL!)
            mediaIcon(image: twitterImage, link: twitterURL!)
            mediaIcon(image: telegramImage, link: telegramURL!)
            mediaIcon(image: mailImage, link: mailURL!)
        }
    }
}

let githubImage = Image("github")
let twitterImage = Image("twitter")
let linkedinImage = Image("linkedin")
let telegramImage = Image("telegram")
let mailImage = Image("mail")

let githubURL = URL(string: "https://github.com/lord-anonymoose")
let twitterURL = URL(string: "https://twitter.com/severus_")
let linkedinURL = URL(string: "https://www.linkedin.com/in/philipp-lazarev-782b14167")
let telegramURL = URL(string: "https://t.me/strawberrymoose")
let mailURL = URL(string:"https://icloud.com")
let mailAddress = "severus99@icloud.com"


struct MailComposeViewController: UIViewControllerRepresentable {
    
    var toRecipients: [String]
    var mailBody: String
    
    var didFinish: ()->()
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(self)
    }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<MailComposeViewController>) -> MFMailComposeViewController {
        
        let mail = MFMailComposeViewController()
        mail.mailComposeDelegate = context.coordinator
        mail.setToRecipients(self.toRecipients)
        mail.setMessageBody(self.mailBody, isHTML: true)
        
        return mail
    }
    
    final class Coordinator: NSObject, MFMailComposeViewControllerDelegate {
        
        var parent: MailComposeViewController
        
        init(_ mailController: MailComposeViewController) {
            self.parent = mailController
        }
        
        func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
            parent.didFinish()
            controller.dismiss(animated: true)
        }
    }
    
    func updateUIViewController(_ uiViewController: MFMailComposeViewController, context: UIViewControllerRepresentableContext<MailComposeViewController>) {
    }
}
