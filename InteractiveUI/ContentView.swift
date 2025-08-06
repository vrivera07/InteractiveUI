import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    @State private var presentAlert = false
    var body: some View {
        VStack {
            Text(presentAlert ? "Presenting": "Dismissed")
            Button("Alert"){
                presentAlert = true
            }
            Spacer()
                .padding()
                .alert("answers received!!", isPresented: $presentAlert,actions: {})
           Text(textTitle)
                .font(.title)
            TextField("Type your name here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
                .padding()
            TextField("Type your age here..", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.leading)
                .font(.body)
                .border(Color.black, width: 1)
                .padding()
            TextField("Type favorite movie here..", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.leading)
                .font(.body)
                .border(Color.purple, width: 1)
                .padding()
            Button("Submit Name") {
               textTitle = "Welcome, \(name)!"
                name = ""
            }//end of button
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            
        }// end of vstack
        
        .padding()
    }
}

#Preview {
    ContentView()
}
