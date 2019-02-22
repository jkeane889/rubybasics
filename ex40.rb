# Here we are creating a new Class called "Song"
class Song
  # initialize creates the Class in the program and runs it.  In this case, "lyrics" could already have a default value
  #  attributed to it, or we could pass in our own value, which will override the default value.
  def initialize(lyrics = ["Come my baby", "You're my pretty lady", "You make me go crazy"])
    @lyrics = lyrics
  end

  # This is a function inside of the Class Song, which takes the argument we pass into as "lyrics," and then creates
  #  a for loop to iterate over the values contained in the argument.
  def sing_me_a_song()
    @lyrics.each {|line| puts line}
  end
end

x = ["Happy birthday to you", "I don't want to get sued", "So I'll stop right there"]

y = ["They rally around tha family", "With pockets full of shells."]


happy_bday = Song.new(x)

bulls_on_parade = Song.new(y)

happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()

Song.new.sing_me_a_song()
