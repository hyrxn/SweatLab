////
////  DOBPicker.swift
////  StartwithSwiftUI
////
////  Created by Tania Cresentia on 03/04/23.
////
//
//import SwiftUI
//
//struct DOBPicker: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct DOBPicker_Previews: PreviewProvider {
//    static var previews: some View {
//        DOBPicker()
//    }
//}
//
//class ViewController: UIViewController {
//
//   @IBOutlet weak var txtDatePicker: UITextField!
//  let datePicker = UIDatePicker()
//
//  override func viewDidLoad() {
//    super.viewDidLoad()
//     showDatePicker()
//  }
//
//
//  func showDatePicker(){
//    //Formate Date
//    datePicker.datePickerMode = .date
//
//   //ToolBar
//   let toolbar = UIToolbar();
//   toolbar.sizeToFit()
//   let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(donedatePicker));
//      let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButton.SystemItem.flexibleSpace, target: nil, action: nil)
//  let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelDatePicker));
//
// toolbar.setItems([doneButton,spaceButton,cancelButton], animated: false)
//
//  txtDatePicker.inputAccessoryView = toolbar
//  txtDatePicker.inputView = datePicker
//
// }
//
//  @objc func donedatePicker(){
//
//   let formatter = DateFormatter()
//   formatter.dateFormat = "dd/MM/yyyy"
//   txtDatePicker.text = formatter.string(from: datePicker.date)
//   self.view.endEditing(true)
// }
//
// @objc func cancelDatePicker(){
//    self.view.endEditing(true)
//  }
//}
