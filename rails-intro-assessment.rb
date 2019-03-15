# We've done the following exercises in Javascript, Now try them in RUBY
# (You can do them in Javascript again if you want extra practice - not required.)
#
# The World Translator
# Write a Method named hello_world that:
#
# takes 1 argument, a language code (e.g. "es", "de", "en")
# returns "Hello, World" for the given language, for at least 3 languages.
# It should default to returning English.
#hello_world("es") should return "Hola Mundo"
#hello_world("de") should return "Hallo Welt"

def hello_world(lang)
  language = "Hola Munda" if lang == "es"
  language = "Hallo Welt" if lang == "de"
  language = "Bonjour le Monde" if lang == "fr"
  p language
end

hello_world('es')
hello_world('de')
hello_world('fr')

# The Grade Assigner
# Write a Method named assign_grade that:
#
# takes 1 argument, a number score.
# returns a grade for the score, either "A", "B", "C", "D", or "F".
# assign_grade(90) should return A
# assign_grade(75) should return C

def assign_grade(score)
  grade = 'A' if score > 89
  grade = 'B' if score < 90 && score > 79
  grade = 'C' if score < 80 && score > 69
  grade = 'D' if score < 70 && score > 59
  grade = 'F' if score < 60
  p grade
end

assign_grade(56)


# The Pluralizer
# Write a method named pluralizer that:
#
# takes 2 arguments, a noun and a number.
# returns the number and pluralized form of the noun, if necessary.
# pluralizer(5, cat) should return "5 cats"
# pluralizer(1, dog) should return "1 dog" because the number one does not require a plural noun
# Arguments will always be a number and a singular noun.

# Bonus: Make it handle a few collective nouns like "sheep", "geese", "children", "people" and "species".

def pluralizer(number, noun)
  if number == 1
    result = number.to_s + ' ' + noun
  elsif noun == 'sheep'
    result = number.to_s + ' ' + noun
  elsif noun == 'goose' && number > 1
    result = number.to_s + ' geese'
  elsif noun == 'child' && number > 1
    result = number.to_s + ' children'
  elsif noun == 'people' && number = 1
    result = number.to_s + ' person'
  elsif noun == 'species' && number = 1
    result = number.to_s + ' species'
  elsif number > 1
    result = number.to_s + ' ' + noun + 's'
  end
  p result
end

pluralizer(5, 'child')
