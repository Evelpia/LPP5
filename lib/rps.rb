#       rps.rb
#       
#       Copyright 2012 Hikoreko <hikoreko@gmail.com>
#       
#       This program is free software; you can redistribute it and/or modify
#       it under the terms of the GNU General Public License as published by
#       the Free Software Foundation; either version 2 of the License, or
#       (at your option) any later version.
#       
#       This program is distributed in the hope that it will be useful,
#       but WITHOUT ANY WARRANTY; without even the implied warranty of
#       MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#       GNU General Public License for more details.
#       
#       You should have received a copy of the GNU General Public License
#       along with this program; if not, write to the Free Software
#       Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#       MA 02110-1301, USA.


class RockPaperScissors
	@@beats = {:piedra => :papel, :papel => :tijeras, :tijeras => :piedra,}
	@@tiradas = @@beats.keys
	def play (tirada_jugador)
		tirada_jugador = tirada_jugador.to_sym
		tirada_pc = @@tiradas.sample
		if tirada_jugador == tirada_pc
			"Ups! Los dos habeis sacado lo mismo. Es un empate =)"
		elsif tirada_jugador == beats[tirada_pc]
			"Tu oponente juega #{tirada_pc} y tu juegas #{tirada_jugador}. ¡Has ganado!"
		else
			"Tu oponente juega #{tirada_pc} y tu juegas #{tirada_jugador}. ¡Has perdido!"
		end		
	end
end

