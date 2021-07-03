//
//  ButtonView.swift
//  SwiftUITutorial
//
//  Created by 1900822 on 2021/6/6.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                HStack {
                    Button(action: {
                        let _ = print("Hello World tapped 1")
                    }) {
                        Text("Hello World")
                            .padding()
                            .background(Color.purple)
                            .foregroundColor(.white)
                            .font(.title)
                    }
                    
                    Button(action: {
                        let _ = print("Hello World tapped 2")
                    }) {
                        Text("Hello World")
                            .foregroundColor(.purple)
                            .font(.title)
                            .padding()
                            .border(Color.purple, width: 2)
                    }
                }
                
                Button(action: {
                    let _ = print("Hello World tapped 3")
                }) {
                    Text("Hello World")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .padding(10)
                        .border(Color.purple, width: 4)
                }
                
                HStack {
                    
                    Button(action: {
                        let _ = print("Hello World tapped 4")
                    }) {
                        Text("Hello World")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding()
                            .background(Color.purple)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .padding(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.purple, lineWidth: 4)
                            )
                    }
                }
                
                Button(action: {
                    let _ = print("Hello World tapped 5")
                }) {
                    Image(systemName: "trash")
                        .padding()
                        .background(Color.red)
                        .clipShape(Circle())
                        .font(.largeTitle)
                        .foregroundColor(.white)
                }
                
                HStack {
                    Button(action: {
                        let _ = print("Hello World tapped 7")
                    }) {
                        Label(
                            title: { Text("Delete")
                                .font(.title)
                                .fontWeight(.semibold)
                                
                            },
                            icon: { Image(systemName: "trash")
                                .font(.title)
                            }
                        )
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.red)
                        .cornerRadius(40)
                    }
                    
                    Button(action: {
                        let _ = print("Hello World tapped 8")
                    }) {
                        Label(
                            title: { Text("Delete")
                                .font(.title)
                                .fontWeight(.semibold)
                                
                            },
                            icon: { Image(systemName: "trash")
                                .font(.title)
                            }
                        )
                        .padding()
                        .foregroundColor(.white)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]),
                                                   startPoint: .topLeading,
                                                   endPoint: .bottomTrailing))
                        .cornerRadius(40)
                    }
                }
                
                HStack {
                    Button(action: {
                        let _ = print("Hello World tapped 9")
                    }) {
                        Label(
                            title: { Text("Delete")
                                .font(.title)
                                .fontWeight(.semibold)
                                
                            },
                            icon: { Image(systemName: "trash")
                                .font(.title)
                            }
                        )
                        .padding()
                        .foregroundColor(.white)
                        .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]),
                                                   startPoint: .topLeading,
                                                   endPoint: .bottomTrailing))
                        .cornerRadius(40)
                    }
                    
                    Button(action: {
                        let _ = print("Hello World tapped 11")
                    }) {
                        Label(
                            title: { Text("Delete")
                                .font(.title)
                                .fontWeight(.semibold)
                                
                            },
                            icon: { Image(systemName: "trash")
                                .font(.title)
                            }
                        )
                        .padding()
                        .foregroundColor(.white)
                        .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]),
                                                   startPoint: .topLeading,
                                                   endPoint: .bottomTrailing))
                        .cornerRadius(40)
//                        .shadow(radius: 5.0)
                        .shadow(color: .gray, radius: 20.0, x: 10, y: 10)
                    }
                }
                
                VStack {
                    Button(action: {
                        let _ = print("share button tapped")
                    }, label: {
                        HStack {
                            Image(systemName: "square.and.arrow.up")
                                .font(.title)
                            Text("Share")
                                .font(.title)
                                .fontWeight(.semibold)
                        }
                    }).buttonStyle(GradientBackgroundStyle())
                    
                    Button(action: {
                        let _ = print("edit button tapped")
                    }, label: {
                        HStack {
                            Image(systemName: "square.and.pencil")
                                .font(.title)
                            Text("Edit")
                                .font(.title)
                                .fontWeight(.semibold)
                        }
                    }).buttonStyle(GradientBackgroundStyle())
                    
                    Button(action: {
                        let _ = print("download button tapped")
                    }, label: {
                        HStack {
                            Image(systemName: "square.and.arrow.down")
                                .font(.title)
                            Text("Download")
                                .font(.title)
                                .fontWeight(.semibold)
                        }
                    }).buttonStyle(GradientBackgroundStyle())
                }
            }
        }
        .padding()
    }
}

struct GradientBackgroundStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(40)
            .padding(.horizontal, 20)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
