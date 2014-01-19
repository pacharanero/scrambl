Scrambl is a script for finding all the words you can make out of any other word. It will also solve the Countdown Conundrum.

##Usage

`$ ruby scrambl.rb <word>`

where the single command line argument <code><word></code> is the "source" word, the word you want to make other words out of.

Example:

`$ ruby scrambl.rb test`

returns 

et, es, st, se, set, test, stet

I never said they would be sensible words! In fact it depends very much on the list you are testing against. Different lists will give differing results - you can change the word list by replacing the text file words.txt in the application directory

##Dependencies

* Tested on MacOSX and  under Ruby 2.1 only, although there's nothing in the code that shouldn't work in earlier versions of Ruby.
* Requires a text file "words.txt" in the appllication directory, containing a list of all "good" English words (ie words you would want to find in the source word), one word per line. 

##Roadmap
Currently I think it's slow and there may be a better way to implement it. If I can get it to run faster and more efficiently I plan to embed it into a webapp at some point.