//
//  socialMedia.swift
//  PortfolioApp
//
//  Created by Philipp on 04.01.2021.
//

import Foundation
import SwiftUI
import MessageUI

func sendEmail() {
    if MFMailComposeViewController.canSendMail() {
        let mail = MFMailComposeViewController()
        mail.mailComposeDelegate = self
        mail.setToRecipients([mailAddress])
        mail.setMessageBody("", isHTML: true)
        
        present(mail, animated: true)
    } else {
        
    }
}

func mailComposeController (_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeError, error: Error) {
    controller.dismiss(animated: true)
}

struct mailIcon: View {
    var body: some View {
        Text("Hello, world!")
    }
}

struct mediaIcon: View {
    @Environment(\.openURL) var openURL
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
                openURL(link)
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
let mailAddress = "severus99@icloud.com"
