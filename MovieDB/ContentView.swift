import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    
    
    var body: some View {
        NavigationStack {
            VStack {
                
                // rotacao lateral
                
                HStack{
                    Text("Now Playing")
                        .font(.title3)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading) // alinha esquerda
                    Spacer()
                    
                    
                    Button {
                    } label: {
                        Text("See all")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                    }
                }
                ScrollView(.horizontal){
                    // colocando agora de lado
                    HStack{
                        VStack{
                            Image("nome1")
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(10)
                            
                            Text("Peixe Grande e suas historias maravilhosas")
                                .bold()
                                .frame(width: 100)
                                .lineLimit(1)
                            
                            HStack{
                                Image(systemName: "star")
                                    .foregroundColor(.gray)
                                
                                Text("1.5")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                    .frame(maxWidth: .infinity, alignment: .leading) // alinha
                            }
                        }
                        
                        VStack{
                            Image("nome2")
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(10)
                            Text("Auto da compadecida")
                                .bold()
                                .frame(width: 100)
                                .lineLimit(1)
                            HStack{
                                Image(systemName: "star")
                                    .foregroundColor(.gray)
                                
                                Text("8.4")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                    .frame(maxWidth: .infinity, alignment: .leading) // alinha
                            }
                            
                        }
                        VStack{
                            Image("nome3")
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(10)
                            
                            Text("Everything everywhere all at once")
                                .bold()
                                .frame(width: 100)
                                .lineLimit(1)
                            HStack{
                                Image(systemName: "star")
                                    .foregroundColor(.gray)
                                
                                Text("7.9")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                    .frame(maxWidth: .infinity, alignment: .leading) // alinha
                            }
                            
                        }
                    }
                }
                
                Text("Popular Movies")
                    .font(.title3)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading) // alinha esquerda
                
                // estrutura de rolagem
                ScrollView{
                    // estrutura para empilhar
                    VStack{
                        
                        // lateral
                        HStack{
                            Image("nome3")
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(10)
                            
                            // empilhando na vertical
                            VStack{
                                Text("Everything everywhere all at once")
                                    .bold()
                                    .frame(maxWidth: .infinity, alignment: .leading) // alinha
                                
                                Spacer() // espaco
                                
                                Text("Uma imigrante chinesa parte rumo a uma aventura onde, sozinha, precisará salvar o mundo, explorando outros universos e outras vidas que poderia ter vivido. Contudo, as coisas se complicam quando ela fica presa nessa infinidade de possibilidades sem conseguir retornar para casa")
                                    .frame(width: 250)
                                    .lineLimit(3)
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                    .frame(maxWidth: .infinity, alignment: .leading) // alinha
                                
                                Spacer() // espaco
                                
                                // horizontal para a nota
                                HStack{
                                    Image(systemName: "star")
                                        .foregroundColor(.gray)
                                    
                                    Text("7.9")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                        .frame(maxWidth: .infinity, alignment: .leading) // alinha
                                }
                            }
                        }
                        
    
                        HStack{
                            Image("nome2")
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(10)
                            
                            // empilhando na vertical
                            VStack{
                                Text("O auto da compadecida")
                                    .bold()
                                    .frame(maxWidth: .infinity, alignment: .leading) // alinha
                                
                                Spacer() // espaco
                                
                                Text("As aventuras dos nordestinos João Grilo (Matheus Natchergaele), um sertanejo pobre e mentiroso, e Chicó (Selton Mello), o mais covarde dos homens. Ambos lutam pelo pão de cada dia e atravessam por vários episódios enganando a todos do pequeno vilarejo de Taperoá, no sertão da Paraíba. A salvação da dupla acontece com a aparição da Nossa Senhora (Fernanda Montenegro). Adaptação da obra de Ariano Suassuna.")
                                    .frame(width: 250)
                                    .lineLimit(3)
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                    .frame(maxWidth: .infinity, alignment: .leading) // alinha
                                
                                Spacer() // espaco
                                
                                // horizontal para a nota
                                HStack{
                                    Image(systemName: "star")
                                        .foregroundColor(.gray)
                                    
                                    Text("8.4")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                        .frame(maxWidth: .infinity, alignment: .leading) // alinha
                                }
                            }
                        }
                    }
                }
            }
            .padding()
            .navigationTitle("MovieDB")
        }
        .searchable(text: $searchText) // aqui eh uma propriedade necessaria
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
