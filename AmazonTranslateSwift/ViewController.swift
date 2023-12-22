//
//  ViewController.swift
//  AmazonTranslateSwift
//
//  Created by Ümit Örs on 8.12.2023.
//

import UIKit
import AWSTranslate

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let translate = AWSTranslate.default()

        let textToTranslate = "Merhaba, dünya!"
        let sourceLanguage = "tr"
        let targetLanguage = "en"

        let request = AWSTranslateTranslateTextRequest()
        request?.text = textToTranslate
        request?.sourceLanguageCode = sourceLanguage
        request?.targetLanguageCode = targetLanguage

        translate.translateText(request!) { (result, error) in
            if let translatedText = result?.translatedText {
                print("Çevrilen metin: \(translatedText)")
            } else if let error = error {
                print("Hata: \(error)")
            }
        }
    }
    
    


}

