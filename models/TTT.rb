class Game

	attr_accessor :one, :two, :three, :four, :five, :six, :seven, :eight, :nine, :p1win, :p2win, :space1, :space2, :space3, :space4, :space5, :space6, :space7, :space8, :space9, :resultheader

	def initialize
		@space1 = 0
		@space2 = 0
		@space3 = 0
		@space4 = 0
		@space5 = 0
		@space6 = 0
		@space7 = 0
		@space7 = 0
		@space8 = 0
		@space9 = 0

		@one = "1"
		@two = "2"
		@three = "3"
		@four = "4"
		@five = "5"
		@six = "6"
		@seven = "7"
		@eight = "8"
		@nine = "9"

		@p1win = false
		@p2win = false

		@resultheader = "."
	end


	def player1(choice)
		@X = choice

		if @X == "1"
			@space1 = 1
			@one = "X"
		elsif @X == "2"
			@space2 = 1
			@two = "X"
		elsif @X == "3"
			@space3 = 1
			@three = "X"
		elsif @X == "4"
			@space4 = 1
			@four = "X"
		elsif @X == "5"
			@space5 = 1
			@five = "X"
		elsif @X == "6"
			@space6 = 1
			@six = "X"
		elsif @X == "7"
			@space7 = 1
			@seven = "X"
		elsif @X == "8"
			@space8 = 1
			@eight = "X"
		elsif @X == "9"
			@space9 = 1
			@nine = "X"
		end
	end



	def player2(choice)

		@O = choice

		if @O == "1"
			@space1 = 5
			@one = "O"
		elsif @O == "2"
			@space2 = 5
			@two = "O"
		elsif @O == "3"
			@space3 = 5
			@three = "O"
		elsif @O == "4"
			@space4 = 5
			@four = "O"
		elsif @O == "5"
			@space5 = 5
			@five = "O"
		elsif @O == "6"
			@space6 = 5
			@six = "O"
		elsif @O == "7"
			@space7 = 5
			@seven = "O"
		elsif @O == "8"
			@space8 = 5
			@eight = "O"
		elsif @O == "9"
			@space9 = 5
			@nine = "O"
		end
	end

	def player1win
		if @space1 + @space2 + @space3 == 3
			@p1win = true
			@resultheader = "Player 1 Wins!"
		elsif @space4 + @space5 + @space6 == 3
			@p1win = true
			@resultheader = "Player 1 Wins!"
		elsif @space7 + @space8 + @space9 == 3
			@p1win = true
			@resultheader = "Player 1 Wins!"
		elsif @space1 + @space4 + @space7 == 3
			@p1win = true
			@resultheader = "Player 1 Wins!"
		elsif @space2 + @space5 + @space8 == 3
			@p1win = true
			@resultheader = "Player 1 Wins!"
		elsif @space3 + @space6 + @space9 == 3
			@p1win = true
			@resultheader = "Player 1 Wins!"
		elsif @space1 + @space5 + @space9 == 3
			@p1win = true
			@resultheader = "Player 1 Wins!"
		elsif @space3 + @space5 + @space7 == 3
			@p1win = true
			@resultheader = "Player 1 Wins!"
		end
	end


	def player2win
		if @space1 + @space2 + @space3 == 15
			@p2win = true
			@resultheader = "Player 2 Wins!"
		elsif @space4 + @space5 + @space6 == 15
			@p2win = true
			@resultheader = "Player 2 Wins!"
		elsif @space7 + @space8 + @space9 == 15
			@p2win = true
			@resultheader = "Player 2 Wins!"
		elsif @space1 + @space4 + @space7 == 15
			@p2win = true
			@resultheader = "Player 2 Wins!"
		elsif @space2 + @space5 + @space8 == 15
			@p2win = true
			@resultheader = "Player 2 Wins!"
		elsif @space3 + @space6 + @space9 == 15
			@p2win = true
			@resultheader = "Player 2 Wins!"
		elsif @space1 + @space5 + @space9 == 15
			@p2win = true
			@resultheader = "Player 2 Wins!"
		elsif @space3 + @space5 + @space7 == 15
			@p2win = true
			@resultheader = "Player 2 Wins!"
		end
	end



end



