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
