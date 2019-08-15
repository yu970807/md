### normal模式

| 操作             | 功能                                              |
| ---              | ---                                               |
| Ctrl + p         | 上一条命令                                        |
| 快速移动         |                                                   |
| gi               | 快速跳转到最后一次编辑的地方并进入插入模式        |
| w                | 移动到以下个word开头（以非空白符分割的单词）      |
| W                | 移动到下一个WORD开头（以空白符分割的单词）        |
| b                | 回到上一个word开头                                |
| B                | 回到上一个WORD开头                                |
| n%               | 跳到文件n%的位置                                  |
| e                | 移动到下一个word结尾                              |
| E                | 移动到下一个WORD结尾                              |
| f                | 查找该行字符 ;可以移动到下一个 ,移动到上一个      |
| t                | 跳转到查找字符的前一个字符 ;和,可以前后跳转       |
| F                | 向前查找字符                                      |
| 0                | 移动到行首                                        |
| ^                | 移动到第一个非空白字符                            |
| $                | 移动到行尾                                        |
| g_               | 移动到行尾非空白字符                              |
| ( )              | 句子间移动                                        |
| { }              | 段落间移动                                        |
| gg               | 页首                                              |
| G                | 页尾                                              |
| 10gg/10G         | 行数加gg/G直接跳到该行                            |
| Ctrl + o         | 返回上一次光标位置                                |
| Ctrl + i         | 返回前一次光标位置                                |
| Ctrl + b         | 往上翻页                                          |
| Ctrl + d         | 往下翻半屏                                        |
| Ctrl + u         | 往上翻半屏                                        |
| Ctrl + f         | 往下翻页                                          |
| H/M/L            | 移动到屏幕开头、中间、底部                        |
| z<CR>            | 当前行移动到屏幕顶部                              |
| zz               | 当前行变为屏幕中间                                |
| z-               | 当前行移动到屏幕底部                              |
| zh/zl            | 往左/右滚屏                                       |
| zH/zL            | 往左/右滚屏半个屏幕宽                             |
| .                | repeat last change n times                        |
| q{a-z}           | 录制到register{a-z}                               |
| q{A-Z}           | 录制appended to register{a-z}                     |
| q                | stop recording                                    |
| @{a-z}           | 执行录制的指令                                    |
| @@               | repeat previous @{a-z} n times                    |
| u                | undo 撤销                                         |
| Ctrl + r         | redo 重做                                         |
| U                | restore last changed line                         |
|                  |                                                   |
|------------------|---------------------------------------------------|
| 增删改查         |                                                   |
| x                | 删除当前字符                                      |
| X                | 删除光标前一个字符                                |
| d{motion}        | 删除一定字符，配合其他指令使用                    |
| dw               | 删除当前单词                                      |
| dd               | 删除当前行, d和x可以配合数字使用                  |
| D                | 删除光标到行尾的字符                              |
| yy/Y             | yank n lines into a register                      |
| p/P              | put a register after/before the cursor            |
| J(join)          | 连接n行，gJ可以去除空格                           |
| c{motion}        | C change to the end of the line, cw change a word |
| s(substitute)    | 删除并进入插入模式                                |
| cc/S             | change n lines                                    |
| ~                | 改变大小写switch case                             |
| v_u/v_U          | visual 模式下改变case，u=lowercase，U=uppercase   |
| g~/gu/gU[motion] |                                                   |
| </>{motion}      | 向左/右缩进                                       |
| <</>>            | 同上
| /?               | 进行向前或反向搜索                                |
| n/N              | 跳转到下一个或上一个匹配的搜索结果                |
| */#              | 向前或向后更改单词匹配                            |


### 命令模式


| 操作          | 功能                 |
| ---           | ---                  |
| :e!           | 不保存并重新加载文件 |
| :r [file]     | 插入文件内容         |
| :r! {command} | 插入命令输出的结果   |
| :so {file}    | source file          |
| :shell        | start a shell        |
| :! {command}  | 执行终端命令         |
|               |                      |
|               |                      |
|               |                      |
|               |                      |




#### 查找替换

- :[range]s/{pattern}/{string}/[flags]
-   - range表示查找范围:10,20表示10-20行，%表示全部
-   - pattern表示查找的文本 \<word\>可以精确匹配文本
-   - string表示目标文本
-   - flags
-   -   - g(global)表示全局范围
-   -   - c(confirm)更改前确认
-   -   - n(number)显示匹配的数量，可统计单词数量


### insert 模式

| 操作     | 功能               |
| ---      | ---                |
| Ctrl + h | backspace          |
| Ctrl + w | 删除前一个单词     |
| Ctrl + u | 删除当前行         |
| Ctrl + c | Esc                |
| Ctrl + [ | Esc                |
| Ctrl + e | 复制下面行的字符   |
| Ctrl + y | 复制上面行的字符   |
| Ctrl + a | 插入上次输入的字符 |
| Ctrl + r | 插入寄存器中的内容 |
|          |                    |
|          |                    |


### Visual

| 操作 | 功能                         |
| ---  | ---                          |
| o    | 把当前位置作为开始框选的位置 |
| gv   | 上次框选的位置               |
| aw   | a word                       |
| iw   | inner word                   |
| aW   | a WORD                       |
| iW   | inner WORD                   |
| as   | a sentence                   |
| is   | inner sentence               |
| ap   | a paragraph                  |
| ip   | inner paragraph              |
|      |                              |
|      |                              |
|      |                              |

### Buffer 

- 缓存区，打开一个文件的时候文件被加载到缓存区
- `:ls`查看当前缓存区，使用`:b n`可以跳到第n 个缓存区
- `:bpre` 前一个 `:bnext` 下一个 `:bfist` `:blast`
- `:b name` 也可以跳转

### Window

- 窗口是可视化的分割区域
- <Ctrl-w>s 水平分割，<Ctrl-w>v 垂直分割。或者:sp :vs
- 切换窗口
-   - <Ctrl-w>w 在窗口间循环切换
-   - <Ctrl-w>h left  大写可以交换窗口位置
-   - <Ctrl-w>j down  大写可以交换窗口位置
-   - <Ctrl-w>k up    大写可以交换窗口位置
-   - <Ctrl-w>l right 大写可以交换窗口位置
-   - <Ctrl-w>= 所有窗口大小一样

### tab

- `:tabnew`新建tab
- `:tabnext`切换下一个tab


### 文本对象操作

- [number]<command>[text object]
- number 表示次数，command 是命令d(delete), c(change), y(yank)
- text object 是要操作的文本对象，单词w，句子s，段落p
-   - i( or i), i", i加上括号或着双引号可以快速选择里面的对象
-   - a( or a), a", a可以选中包括括号在内的文本对象


### 复制粘贴与寄存器的使用

- normal  y->p, d->p
- visual
- yiw, yy
- insert
-   - vimrc设置了autoindent，粘贴python代码缩进错乱
-   - 需要使用`:set paste` 和 `:set nopaste` 解决

#### register

- 通过"{register} 可以指定寄存器，不指定则默认为无名寄存器
- 比如使用`"ayiw`复制一个单词到寄存器a中，`"bdd`删除当前行到寄存器b中
- 复制专用寄存器`"0`，使用y复制文本同时会被拷到复制寄存器0
- 系统剪贴板`"+`，可以复制到系统剪贴板
- `:set clipboard=unnamed`可以直接复制粘贴系统剪贴板内容
- 在insert模式下Ctrl+r可以输入寄存器粘贴里面的内容，无名寄存器默认为""


### Vimrc

- rc = run command
- 系统级vimrc和用户级vimrc
- 每一行作为一个命令执行


### Vim宏(macro)

- 宏可以看成是一系列命令的集合
- 我们可以使用宏录制一系列操作，然后用于回放
- 宏可以非常方便地把一系列命令用在多行文本上
- normal模式下使用q录制，同时q结束录制
- 使用q{register}选择要保存的寄存器，把录制的命令保存其中
- 使用@{register}回放寄存器中保存的一系列命令
- visual 模式`:normal @{register}`来框选批量操作




