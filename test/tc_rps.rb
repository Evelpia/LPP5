#       tc_rps.rb
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

require "rps"
require "test/unit"

class TestRockPaperScissors < Test::Unit::TestCase
	def setup
		#variables predefinidas para el test		
	end
	def teardown
		#nothing to do
	end
	
	def test_play_1
		30.times do
			assert correct_answer(RockPaperScissors.play('tijeras'))
		end
	end
	
	def test_play_2
		30.times do
			assert correct_answer(RockPaperScissors.play('papel'))
		end
	end
	
	def test_play_3
		30.times do
			assert correct_answer(RockPaperScissors.play('roca'))
		end
	end
	
	def test_wrong_play
			assert_raises(SyntaxError){RockPaperScissors.play('No me lo experaba')}
	end
	
	def correct_answer(x)
		return true if x =- /Ups! Los dos habeis sacado lo mismo. Es un empate =)/
	end
end

