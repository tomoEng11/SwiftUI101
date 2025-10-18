//
//  WebViewSampleView.swift
//  SwiftUI101
//
//  Created by 井本　智博 on 2025/09/04.
//

import SwiftUI
import WebKit
import Playgrounds

struct WebViewSampleView: View {
    @State private var isShowingWebView: Bool = false
    var body: some View {
        VStack {
            Button(action: {
                isShowingWebView = true
            }, label: {
                Text("Display WebView")
            })
        }
        .fullScreenCover(isPresented: $isShowingWebView, content: {
            WebView(url: URL(string: "https://apple.com")!)
        }) 
    }
}

#Preview {
    WebViewSampleView()
}

struct WebView: UIViewRepresentable {
    
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        let cfg = WKWebViewConfiguration()
        let webView = WKWebView(frame: .zero, configuration: cfg)
        webView.navigationDelegate = context.coordinator
        webView.allowsBackForwardNavigationGestures = true
        return webView
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        if webView.url != url {
            webView.load(URLRequest(url: url))
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
}


final class Coordinator: NSObject, WKNavigationDelegate {
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("読み込み開始")
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("読み込み完了")
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        print("エラー: \(error.localizedDescription)")
    }
}

#Playground {
    let configuration = WKWebViewConfiguration()
    configuration.userContentController
}
