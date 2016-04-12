## My personal Mac env setting

### useage

#### step one
- Clone this repo and then cd into it. `git clone git@github.com:vimniky/dots.git`

#### step two
- I'm using zsh ,but your don't have to .
- Edit your ~/.zshrc  and adding the following lines:

```bash
export dotDir=$HOME/dots
export dotZshrc=$dotDir/zshrc
. $dotZshrc/zshrc.sh
```


#### step three
```bash
$ cd ~/dots
$ ./init.sh
```

all set !
