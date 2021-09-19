//
//  ViewController.swift
//  Som dos Bichos
//
//  Created by Andre Linces on 18/09/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    //Instanciando o objeto criado
    var player = AVAudioPlayer()
    
    @IBAction func somCachorro(_ sender: Any) {
        //print("Clicou no cachorro")
        self.recuperandoSonsAnimais(nomeSom: "cao")
        
    }
    @IBAction func somGato(_ sender: Any) {
        self.recuperandoSonsAnimais(nomeSom: "gato")
    }
    
    @IBAction func somLeao(_ sender: Any) {
        self.recuperandoSonsAnimais(nomeSom: "leao")
    }
    
    @IBAction func somMacaco(_ sender: Any) {
        self.recuperandoSonsAnimais(nomeSom: "macaco")
    }
    
    
    @IBAction func somOvelha(_ sender: Any) {
        self.recuperandoSonsAnimais(nomeSom: "ovelha")
    }
    
    @IBAction func somVaca(_ sender: Any) {
        self.recuperandoSonsAnimais(nomeSom: "vaca")
    }
    
    
    func recuperandoSonsAnimais( nomeSom: String ){
        
        if let path = Bundle.main.path(forResource: nomeSom, ofType: "mp3"){
        //criando url
        let url = URL(fileURLWithPath: path)
        //objeto recebendo a url
        
    
        do {
            player =  try AVAudioPlayer.init(contentsOf: url)
            player.prepareToPlay()
            player.play()
            
        } catch  {
            print("Erro ao executar o som")
        }
        
    }
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //criando path
        /*if let path = Bundle.main.path(forResource: "cao", ofType: "mp3"){
        //criando url
        let url = URL(fileURLWithPath: path)
        //objeto recebendo a url
        
    
        do {
            player =  try AVAudioPlayer.init(contentsOf: url)
            player.prepareToPlay()
            
        } catch  {
            print("Erro ao executar o som")
        }
        
    }
         */

}

}
