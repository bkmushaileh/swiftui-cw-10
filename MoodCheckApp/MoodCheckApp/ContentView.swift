//
//  ContentView.swift
//  MoodCheckApp
//
//  Created by Khaled Al-Mushaileh on 1/4/21.
//

import SwiftUI
enum mood {
    case Happy, Sad, Fine, Meh
}

struct ContentView: View {
    @State var emoji : String = ""
    var body: some View {
        VStack(alignment: .center){
            Text("MoodCheck")
                .font(.largeTitle)
                .bold()
            Spacer()
            Text("I feel" + " \(emoji)")
                .font(.title)
            HStack{
                Text("🙂").onTapGesture{
                    emoji = moodcheck(mood: .Fine)
                }
                Text("😟").onTapGesture{
                    emoji = moodcheck(mood: .Sad)
                }
                Text("😇").onTapGesture{
                    emoji = moodcheck(mood: .Meh)
                }
                Text("😃").onTapGesture{
                    emoji = moodcheck(mood: .Happy)
                }
                
                
            }.padding()
            Spacer()

        }
    }
    func moodcheck (mood: mood) -> String
    {
        if mood == .Happy
        {
            return "happy"
        }
        if mood == .Sad {
            return "sad"
        }
        if mood == .Meh
        {
            return "meh"
        }
        if mood == .Fine
        {
            return "fine"
        }
        return ""
    }
    
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(emoji: "")
            .previewDevice("iPhone 12")
    }
    
}
