import SwiftUI

struct GuiaLayoutView: View {
    var body: some View {
        ScrollView {
           VStack(alignment: .leading, spacing: 10) {
                    Text("Guia de Layout e Alinhamento")
                                        .font(.title)
                                        .bold()
                                    
                                    // Exemplo 1: VStack (Vertical Stack)
                                    // Organiza elementos de cima para baixo.
                                    VStack(alignment: .leading, spacing: 8) {
                                        Text("VStack (Vertical)").font(.headline)
                                        Text("Elemento 1")
                                            .padding(5)
                                            .background(Color.indigo.opacity(0.5)
                                            .clipShape(RoundedRectangle(cornerRadius: 5)))
                                        Text("Elemento 2")
                                            .padding(5)
                                            .background(Color.green.opacity(0.5)
                                            .clipShape(RoundedRectangle(cornerRadius: 5)))
                                        Text("Elemento 3")
                                            .padding(5)
                                            .background(Color.orange.opacity(0.5)
                                            .clipShape(RoundedRectangle(cornerRadius: 5)))
                                    }
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    
                                    // Componente Divider: Cria uma linha divisória na tela
                                    Divider()
                                    
                                    // Exemplo 2: HStack (Horizontal Stack)
                                    // Organiza elementos da esquerda para a direita.
                                    VStack(alignment: .leading) {
                                        Text("HStack (Horizontal)").font(.headline)
                                        HStack(spacing: 10) {
                                            Text("Item A").padding(5).background(Color.indigo.opacity(0.5))
                                            // Componente Spacer: Empurra os elementos preenchendo o espaço vazio
                                            Spacer()
                                            Text("Item B").padding(5).background(Color.orange.opacity(0.5))
                                        }
                                    }
                                    
                                    Divider()
                                    
                                    // Exemplo 3: ZStack (Zero-Depth Stack) e Modificador .overlay
                                    // ZStack sobrepõe elementos em camadas de profundidade (eixo Z).
                                   
                                    VStack(alignment: .leading, spacing: 15) {
                                        Text("ZStack ").font(.headline)
                                        
                                        // Exemplo ZStack
                                        ZStack {
                                            Color.indigo.frame(height: 60)
                                            Text("Texto centralizado no ZStack").foregroundColor(.white)
                                        }
                                        
                                        Text("Alinhamento com .overlay(alignment:content:)").font(.headline)
                                        // .overlay adiciona uma camada exatamente alinhada acima do elemento atual.
                                        
                                        // Exemplo .overlay com alinhamento customizado
                                        Color.indigo
                                            .frame(height: 60)
                                        // Posicionamentos interessantes: .center .topleading .centerFirstTextBaseline
                                            .overlay(alignment: .bottomTrailing) {
                                                Text("Aviso no canto")
                                                    .font(.caption)
                                                    .padding(5)
                                                    .background(Color.orange)
                                            }
                                    }
                                    
                                    Divider()
                                    
                                    //Exemplo 4: LazyVStack e LazyHStack (Pilhas Otimizadas)
                                    // Criam elementos apenas quando aparecem na tela, ideal para listas longas.
                                    VStack(alignment: .leading) {
                                        Text("LazyVStack (Carregamento sob demanda)").font(.headline)
                                        ScrollView {
                                            LazyVStack {
                                                ForEach(1...3, id: \.self) { index in
                                                    Text("Item Otimizado \(index)")
                                                        .padding()
                                                        .frame(maxWidth: .infinity)
                                                        .background(Color.orange.opacity(0.5))
                                                }
                                            }
                                        }
                                        .frame( width:.infinity)
                                    }
                                    
                                    Divider()
                                    
                                    //Exemplo 5: Grid e GridRow (Grelha Estática)
                                    // Organiza elementos em linhas e colunas fixas e alinhadas rigorosamente.
                    VStack(alignment: .listRowSeparatorLeading) {
                                        Text("Grid e GridRow (Matriz Estática)").font(.headline)
                                        Grid() {
                                            GridRow {
                                                Text("1 x 1").padding().background(Color.teal.opacity(0.3))
                                                Text("1 x 2").padding().background(Color.teal.opacity(0.3))
                                            }
                                            GridRow {
                                                Text("2 x 1").padding().background(Color.teal.opacity(0.3))
                                                Text("2 x 2").padding().background(Color.teal.opacity(0.3))
                                            }
                                        }
                                    }
                                    
                                    Divider()
                                    
                                    // exemplo 6: LazyVGrid (Grade Dinâmica Vertical)
                                    // Cria colunas onde os itens são distribuídos e carregados conforme a rolagem.
                                    VStack(alignment: .leading) {
                                        Text("LazyVGrid (Grade Dinâmica)").font(.headline)
                                        let colunas = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
                                        
                                        LazyVGrid(columns: colunas, spacing: 10) {
                                            ForEach(1...9, id: \.self) { num in
                                                Text("Icon \(num)")
                                                    .frame(width: 80, height: 50)
                                                    .background(Color.pink.opacity(0.3))
                                            }
                                        }
                                    }
                                }
                                .padding()
        }
    }
}
