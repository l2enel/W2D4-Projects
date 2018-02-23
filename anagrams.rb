require 'byebug'

def first_anagram?(string_1, string_2)
  combos = sting_1.chars.permutations.to_a
  combos.map! { |combo| combo.join}
  combos.include?(string_2)
end
#  Complexity
#  Space O(n!)
#  Time O(n!)
#
#
def second_anagram?(str1, str2)
  str1.chars.each do |el|
    if str2.include?(el)
      str1 = str1.sub(el, "")
      str2 = str2.sub(el, "")
    end
  end

  str1.empty? && str2.empty?
end



def second_anagramv2?(str1, str2)
  str1.each do |el1|
    str2.each do |el2|
      if el1 == el2
        str1 = str1.sub(el, "")
        str2 = str2.sub(el, "")
        break
      end
    end
  end

  str1.empty? && str2.empty?
end

#  Complexity
#  Space O(1)    v2 O(1)
#  Time O(n)     v2 O(n^2)
#
#


def third_anagram(str1, str2)
  str1.sort == str2.sort
end

#  Complexity
#  Space O(1)
#  Time O()
#
#
