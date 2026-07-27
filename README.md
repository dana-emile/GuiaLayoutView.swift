## Arquitetura de Layout e Organização Espacial

Desenvolvi um painel abrangente para dominar os fluxos de posicionamento e renderização de elementos de interface no SwiftUI:

* **`VStack`**: Alinhamento vertical simples de views com controle de espaçamento interno.
* **`HStack`**: Alinhamento horizontal linear de componentes.
* **`ZStack`**: Empilhamento de profundidade baseado em camadas tridimensionais (eixo Z).
* **`Spacer`**: Componente expansível dinâmico que ocupa todo o espaço livre restante no container.
* **`Divider`**: Linha visual delimitadora que respeita o contexto do modo claro/escuro nativamente.
* **`.overlay(alignment:content:)`**: Modificador que sobrepõe uma View secundária em uma posição geométrica exata sobre a View principal.
* **`LazyVStack` / `LazyHStack`**: Estruturas de pilha otimizadas para performance que destroem e criam views dinamicamente conforme a rolagem do usuário.
* **`Grid` / `GridRow`**: Sistema de tabelas explícitas introduzido no iOS 16 para alinhar perfeitamente dimensões de colunas paralelas.
* **`LazyVGrid`**: Grid adaptável baseado em configurações de `GridItem` para exibição em massa (estilo galerias).
