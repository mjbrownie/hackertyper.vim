#Hackertyper.vim

Inspired by www.hackertyper.com . Allows the user to appear productive in vim via
aimless button mashing.

##Warning

Please only use on dummy code and backup. Use in isolated sessions. Currently
messes with your mappings.

##Installation

I'd suggest a bundle install eg.

    git clone https://github.com/mjbrownie/hackertyper.vim.git ~/.vim/bundle/hackertyper.vim

##Usage

1. Go to an unwitting file and write a %.hackertyper swapfile. :WriteHackerTyper
2. Truncate the file (ggdG)
3. type :StartHackerTyper
4. Enter Insert Mode
5. sdfhlksjdfhlskjdhflskjdhflksjhdflskjdhflskjdfhslkjdfhslkdjhf
6. Once you have got it out of your system type :StopHackerTyper
7. the hackertyper swapfile is just filename.hackertyper so delete afterwards.

##Stuff that is not going to work

* Insert mappings, completers, aliases are not likely to enjoy this.
* any tab settings that are different to the file contents.

##Possible enhancements

I might look at placeholder variables to allow some flexibility. It might even
be useful for mimicking/cheating live demonstrations/lectures, speeding through boilerplate etc.
