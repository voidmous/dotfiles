# My cfg files

## Linux

### Python
#### [为python命令行添加Tab键自动补全功能](http://cyr520.blog.51cto.com/714067/1190908 )

在`~/.pythonstartup.py`中写入如下代码：

```python
#!/usr/bin/python
# python startup file
import sys
import readline
import rlcompleter
import atexit
import os
# tab completion
readline.parse_and_bind('tab: complete')
# history file
histfile = os.path.join(os.environ['HOME'], '.pythonhistory')
try:
    readline.read_history_file(histfile)
except IOError:
    pass
atexit.register(readline.write_history_file, histfile)
del os, histfile, readline, rlcompleter
```

在`~/.bashrc`中添加一个环境变量

```bash
export PYTHONSTARTUP=~/.pythonstartup.py
```

#### [设置pypi镜像](http://www.pypi-mirrors.org/)

临时指定安装源可用`pip install web2py -i http://pypi.douban.com/simple`

使用全局设置可在`~/.pip/pip.conf`中写入：

```ini
[global]
index-url = http://<mirror>/simple
```

## Cygwin

## Windows
