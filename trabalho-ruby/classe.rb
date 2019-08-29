class Classe
    attr_accessor :nome_classe, :habilidade, :modificadores
    def initialize nome_classe, habilidade, modificadores
        @nome_classe = nome_classe
        @habilidade = habilidade
        @modificadores = modificadores
    end

    def carrega_classes_estaticas
        classes = []
        classes.append self.Class.new 'Construtor', 'Construir casas', {forca: 1, inteligencia: 1, vida: -2}
        classes.append self.Class.new 'Ferreiro', 'Construir espadas e armaduras', {forca: 2, ataque: 1}
        classes.append self.Class.new 'Curandeiro', 'Curar outras unidades', {forca: 3, inteligencia: 3, ataque: -1}
        classes.append self.Class.new 'Guerreiro', 'Atacar e defender', {forca: 2, ataque: 3, forca: 2}

        classes
    end
end

