# blog.linux
bobolu's linux blog

##git push origin master error:403 
  The requested URL returned error: 403 
  Forbidden while accessing https://bblu@github.com/bblu/nodejs.git/info/refs

$git remote set-url origin https://bblu@github.com/bblu/nodejs.git

# 1.ed and sed

## 1.1 ed
ed [g]/regular/d filename         #[全局]删除/匹配行/

ed [g]/s/pattern/replacement/[g]  #[全局]替换/匹配块/替换块[同行多次匹配]

## 1.2 sed
sed -n 7p 1.txt                   #输出第7行
sed "/^\s*$/d" filename           #删除文件中的空行（包括空白字符的行）
sed -i /xxxx/d ./*.txt            #要删除符合条件的行

sed -i /7777/a77777 ./test.txt    #/a在下一行添加
sed -i /8888/i88888 ./test.txt    #/i在上一行添加
sed 's/,/\n/g' ./test.txt         #, -> next line
***

# 2.awk
We’ve crafted some handsome templates for you to use. Go ahead and click 'Continue to layouts' to browse through them. You can easily go back to edit your page before publishing. After publishing your page, you can revisit the page generator and switch to another theme. Your Page content will be preserved.

***

# 3.vim
## 替换
:s/viv/sky/g 替换当前行所有 viv 为 sky
:%s/viv/sky/g（等同于 :g/viv/s//sky/g） 替换每一行中所有 viv 为 sky

## 大小写转换
~  转换1个字符 5~ 5个字符
g[Uu]w 转换单词为大小写
g~w    相互转换单词大小写
ggguG  表示把整篇文章转换为小写

gg表示光标移动到文章开头，G表示选定范围为到文章结尾
guu 将整行转换为小写
gUU 将整行转换为大写
g~~ 将一行中的大小写互转
g[u|U]5w 表示转换为小|大写5个单词

## 行编辑
j 光标移到下一行
J 下一行移到上一行
