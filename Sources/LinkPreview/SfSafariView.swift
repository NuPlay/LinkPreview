//
//  SwiftUIView.swift
//  
//
//  Created by 이웅재 on 2021/12/08.
//

import SwiftUI
import SafariServices

struct SfSafariView: UIViewControllerRepresentable {

    let url: URL

    func makeUIViewController(context: UIViewControllerRepresentableContext<SfSafariView>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SfSafariView>) {

    }
}
