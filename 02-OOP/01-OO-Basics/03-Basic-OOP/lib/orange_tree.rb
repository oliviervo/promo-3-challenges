class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)
attr_reader :height, :fruits

  def initialize
    @height = 0
    @age = 0
    @fruits = 0
    @dead = false
  end

  def one_year_passes!
    @age += 1
     if @age <= 10
      @height += 1
    end
    update_fruits
  end

  #def fruits
  #@fruits          #dans ces cas là, on peut le mettre en attr_reader
  #end
  #Ici la methode fruits va juste servir à retourner la valeur de la varaible @fruits.
  #on va intégrer une variable dans une methode quand on veut la rendre accesible à l'utilsiateur
  #par défaut les @ ne sont pas communiquées à l'utilisateur. on lui donne accès avecle
  #attr quand il en a besoin pour éxécuter des choses.

  def dead?
    false
    if @age <= 50
      @dead = false
    elsif @age > 50 && @age <100
      @dead = false || true
    else
      @dead = true
    end
  end

  def pick_a_fruit!
    @fruits -= 1
  end

private

  def update_fruits
    # faire une methode update_fruits va permettre de sauvegarder la valeur de fruits pour une année donnée
    #Ainsi la valeur de @fruits ne va pas changer à chaque fois qu'on va lancer la procédure mais
    #uniquement une fois par an puisqu'on a l'appeler dans ""one year pass""
    if @age <= 5
         @fruits = 0
        elsif @age >5 &&  @age <= 10
          @fruits = 100
        elsif @age > 10 &&  @age <= 15
          @fruits = 200
        else
          @fruits = 0
        end
  end

end
