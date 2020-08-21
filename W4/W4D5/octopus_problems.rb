# A Very Hungry Octopus wants to eat the longest fish in an array of fish



def clever_octopus(a)
    max = ""
    max_length = 0

    a.inject('') {|acc,el| acc.length > el.length ? acc : el}
end

fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
p clever_octopus(fishes)

tiles_hash = Hash.new(0)
tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
tiles_array.each_with_index {|el, i| tiles_hash[el] = i }
def constant_dance(move, tiles_hash)
    tiles_hash[move]
end





