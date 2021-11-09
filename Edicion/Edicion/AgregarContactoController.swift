//
//  AgregarContactoController.swift
//  Edicion
//
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation
import UIKit

class AgregarContactoController : UIViewController {
    
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtCorreo: UITextField!
    @IBOutlet weak var txtCelular: UITextField!
    
    var callBackAgregarContacto : ((Contacto) -> Void)?
    override func viewDidLoad() {
        self.title = "Agregar contactos"
    }
    
    @IBAction func doTapGuardar(_ sender: Any) {
        let nombre = txtNombre.text!
        let correo = txtCorreo.text!
        let celular = txtCelular.text!
        
        let contacto = Contacto(nombre: nombre, celular: celular, correo:correo)
        callBackAgregarContacto!(contacto)
        
        self.navigationController?.popViewController(animated: true)
    }
    
}
