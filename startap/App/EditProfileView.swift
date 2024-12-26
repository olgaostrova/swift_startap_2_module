//
//  EditProfileView.swift
//  startap
//
//  Created by Ksenia Svidunovich on 01.12.2024.
//

import SwiftUI

struct EditProfileView: View {
    
@Binding var user: UserProfile
@Binding var selectedImage: UIImage?
@State private var firstName: String = ""
@State private var lastName: String = ""
@State private var email: String = ""
@State private var showImagePicker: Bool = false
    
//@AppStorage("firstName") private var storedFirstName: String = ""
//@AppStorage("lastName") private var storedLastName: String = ""
//@AppStorage("email") private var storedEmail: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Section {
                    Button(action: {
                        showImagePicker.toggle()
                    }) {
                        if let selectedImage = selectedImage {
                            Image(uiImage: selectedImage)
                                .resizable()
                                .frame(width: 100, height: 100)
                                .clipShape(Circle())
                        } else {
                            Image("profileImg")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .cornerRadius(20)
                        }
                    }
//                    Button(action: {
//                        showImagePick.toggle()
//                    }) {
//                        if let otherImage = otherImage {
//                            Image(uiImage: otherImage)
//                                .resizable()
//                                .frame(width: 100, height: 100)
//                                .clipShape(Circle())
//                        } else {
//                            Image("profileImg")
//                                .resizable()
//                                .frame(width: 100, height: 100)
//                                .cornerRadius(20)
//                        }
//                    }
                }
                Section(header: Text("startaper")
                    .font(.custom("Inter-18pt-Regular.ttf", size: 24))
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color("BlackSuper"))
                    .padding(.bottom, 10)
                ) {
                    //инфоплист
                    List {
                        //имя
                        VStack(alignment:.leading, spacing: 2){
                            Text("Имя")
                                .font(.custom("Inter-18pt-Regular.ttf", size: 14))
                                .foregroundColor(Color("Grey"))
                                .fixedSize()
                            TextField("Имя", text: $firstName)
                                .font(.custom("Inter-18pt-Regular.ttf", size: 18))
                                .foregroundColor(Color("BlackSuper"))
                                .fixedSize()
                                .onChange(of: firstName) { newValue in
                                    if let firstChar = newValue.first {
                                        let first = String(firstChar).uppercased()
                                        let rest = String(newValue.dropFirst()).lowercased()
                                        firstName = first + rest
                                    }
                                }
                        }
                        // фамилия
                        VStack( alignment:.leading, spacing: 2) {
                                Text("Фамилия")
                                    .font(.custom("Inter-18pt-Regular.ttf", size: 14))
                                    .foregroundColor(Color("Grey"))
                                    .fixedSize()
                                TextField("Фамилия", text: $lastName)
                                    .font(.custom("Inter-18pt-Regular.ttf", size: 18))
                                    .foregroundColor(Color("BlackSuper"))
                                    .fixedSize()
                                    .onChange(of: lastName) { newValue in
                                        if let firstChar = newValue.first {
                                            let first = String(firstChar).uppercased()
                                            let rest = String(newValue.dropFirst()).lowercased()
                                            lastName = first + rest
                                        }
                                    }
                            }

                        // специальность
                        VStack( alignment:.leading, spacing: 2) {
                                Text("Специальность")
                                    .font(.custom("Inter-18pt-Regular.ttf", size: 14))
                                    .foregroundColor(Color("Grey"))
                                    .fixedSize()
                                TextField("Email", text: $email)
                                    .keyboardType(.emailAddress)
                                    .font(.custom("Inter-18pt-Regular.ttf", size: 18))
                                    .foregroundColor(Color("BlackSuper"))
                        }
                    }
                    
                }
                

            }
            .navigationBarItems(leading: Button("Отменить") {
                // Закрыть представление редактирования без сохранения
            }, trailing: Button("Сохранить") {
                user.firstName = firstName
                user.lastName = lastName
                user.email = email
                if let selectedImage = selectedImage {
                    user.avatar = selectedImage
                }
                // Закрыть представление редактирования
//                storedFirstName = firstName
//                storedLastName = lastName
//                storedEmail = email
            })
            
            .onAppear {
                firstName = user.firstName
                lastName = user.lastName
                email = user.email
            }
            .sheet(isPresented: $showImagePicker) {
                ImagePicker(image: $selectedImage)
            }
        }
    }
}
    

struct ImagePicker: UIViewControllerRepresentable {
    @Binding var image: UIImage?
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let parent: ImagePicker
        init(parent: ImagePicker) {
            self.parent = parent
        }
        func imagePickerController(
            _ picker: UIImagePickerController,
            didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]
        ) {
            if let uiImage = info[.originalImage] as? UIImage {
                parent.image = uiImage
            }
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
    @Environment(\.presentationMode) var presentationMode
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }
    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) ->
    UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
    }
    func updateUIViewController(
        _
        uiViewController: UIImagePickerController,
        context: Context
    ) { }
}



//#Preview {
//    EditProfileView()
//}
