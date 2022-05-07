//
//  SearchTextField.swift
//  Werdd
//
//  Created by Jonny Klemmer on 5/6/22.
//

import Foundation
import SwiftUI
import UIKit

// MARK: - SearchTextField

struct SearchTextField: UIViewRepresentable {
    typealias UIViewType = UITextField

    @Binding var text: String
    let placeholder: String = "Find a word..."

    func makeCoordinator() -> Coordinator {
        Coordinator(text: $text)
    }

    func makeUIView(context: UIViewRepresentableContext<SearchTextField>) -> UITextField {
        let textField = UITextField(frame: .zero)
        textField.delegate = context.coordinator
        textField.placeholder = placeholder
        textField.clearButtonMode = .whileEditing
        return textField
    }

    func updateUIView(_ uiView: UITextField, context: UIViewRepresentableContext<SearchTextField>) {
        uiView.text = text
        uiView.setContentHuggingPriority(.defaultHigh, for: .vertical)
    }
}

extension SearchTextField {
    class Coordinator: NSObject, UITextFieldDelegate {
        @Binding var text: String

        init(text: Binding<String>) {
            _text = text
        }

        func textFieldDidChangeSelection(_ textField: UITextField) {
            DispatchQueue.main.async {
                self.text = textField.text ?? ""
            }
        }
    }
}
