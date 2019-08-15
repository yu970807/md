# terminal

### install homebrew
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### install zsh

```
brew install zsh
```

### 切换 shell 为 zsh

```
chsh -s /bin/zsh

echo $SHELL
```

### install oh-my-zsh

```
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### 修改 zsh 主题

`vim ~/.zshrc`修改`ZSH_THEME=" "`为自己的主题

### highlighting

```
brew install zsh-syntax-highlighting
```

### autosuggestions

```
brew install zsh-autosuggestions
```

### 应用配置
```
source ~/.zshrc
```


