# Desafio: Pedra, papel e tesoura
# Crie um método que seja capaz de receber duas jogadas, onde a primeira entrada é o movimento do jogador 1 e a segunda entrada é o movimento do jogador 2
# A saída deve ser uma string com a informação de qual dos jogadores foi o vencedor. Se houver empate, a saída deve ser uma string com a frase "Empate!"
# Extra: Quando a jogada do jogador 2 não é inserida, o método deve criar uma "máquina" que seja capaz de jogar contra o jogador 1

class Jogo
  POSSIBLE_MOVES = %w[pedra papel tesoura]
 
  attr_reader :entrada1, :entrada2

  def initialize(entrada1, entrada2)
    @entrada1 = entrada1
    @entrada2 = entrada2
  end
  
  def verificacao
    (POSSIBLE_MOVES.include?(entrada1)) && (POSSIBLE_MOVES.include?(entrada2))
   end

  def jogador2
    if @entrada2 == nil 
      @entrada2 = POSSIBLE_MOVES[rand(POSSIBLE_MOVES.length)]
    end
  end

  def rodada 
    jogador2
    return 'Entrada inválida!' unless verificacao 
    hash_arr = {
      'papel' => {
        'papel'=> 'Deu empate!',
        'pedra'=> 'O jogador 1 venceu',
        'tesoura'=> 'O jogador 2 venceu'
      },
      'pedra' =>{
        'pedra' => 'Deu empate!', 
        'tesoura' => 'O jogador 1 venceu', 
        'papel' => 'O jogador 2 venceu'
      },
      'tesoura' =>{
        'tesoura' => 'Deu empate!', 
        'papel' => 'O jogador 1 venceu', 
        'pedra' => 'O jogador 2 venceu'
      }
    }
  
 return hash_arr[@entrada1][@entrada2]
  
  end
end
