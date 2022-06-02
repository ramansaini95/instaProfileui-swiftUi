


import SwiftUI

struct ContentView:View {
    
    let columns = [GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible())
    ]
    
    var body: some View
    {
        ScrollView(showsIndicators:false){
            VStack{
                HStack{
                    Image(systemName: "chevron.left")
                        .font(.title2)
                    Spacer()
                    Text("User Name")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Image(systemName: "checkmark.seal")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .font(.caption)
                    Spacer()
                }
                
                //profile
                
                HStack{
                    Image("profile")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 72, height: 72 , alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    Spacer()
                    HStack(spacing:32){
                        VStack(spacing:2){
                        Text("2345")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("Posts")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                    }
                    VStack(spacing:2){
                        Text("2345")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("Follwers")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                    }
                    VStack(spacing:2){
                        Text("2345") .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("Following")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                    }
                    
                }
                }
                
              //userinfo
                VStack(alignment:.leading){
                    Text("User Name")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Text("user@gmail.com")
                        .font(.caption)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                .frame(maxWidth: .infinity,alignment:.leading)
                .padding(.vertical)
                
                //common followers
                
                HStack(spacing:-12){
                    Image("profile")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 32, height: 32)
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                            .stroke(Color.white,lineWidth: 2)
                        )
                    
                        Image("profile")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 32, height: 32, alignment: .center)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .overlay(
                                Circle()
                                .stroke(Color.white,lineWidth: 2)
                            )
                    
                    Image("profile")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 32, height: 32, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .overlay(
                            Circle()
                            .stroke(Color.white,lineWidth: 2)
                        )
                    
                    
                    HStack(spacing:2){
                        Text("Followed by")
                        Text("spiderman,ironman")
                            .fontWeight(.semibold)
                        Text("and")
                        Text("146 others")
                            .fontWeight(.semibold)
                    }
                    .font(.caption)
                    .padding(.leading)
                    Spacer()
                    
                }
                
                HStack{
                    Text("Following")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .frame(width: 152, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(Color(.systemGray4))
                        )
                    
                    Text("Message")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .frame(width: 152, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(Color(.systemGray4))
                        )
                    Image(systemName: "person.badge.plus")
                        .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(Color(.systemGray4))
                        )
                }
                
                HStack{
                    Spacer()
                    Image(systemName: "squareshape.split.3x3")
                        .font(.title2)
                    Spacer()
                    Image(systemName: "play.rectangle")
                        .font(.title2)
                    Spacer()
                    Image(systemName: "play")
                        .font(.title2)
                    Spacer()
                    Image(systemName: "person.crop.square")
                        .font(.title2)
                    Spacer()
                }.padding(.vertical,6)
                .foregroundColor(Color(.darkGray))
                
                
                LazyVGrid(columns:columns){
                    ForEach(0..<20,id:\.self){
                        i in Image("profile")
                            .resizable()
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                    }
                }
                
            }
            .padding(6)
        }
        .padding()
       
    };
}


struct ContentView_Previews:PreviewProvider {
    static var previews: some View{
        Group {
            ContentView()
        };
    };
}
