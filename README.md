# vimfiles

### 子模块初步
```
git submodule add https://github.com/tpope/vim-pathogen.git
```

### 删除子模块
```
git rm jedi-vim/
rm -rf .git/modules/jedi-vim/
```

### 克隆一个带子模块的项目
```
git clone git@github.com:zengxunxun/vimfiles.git
cd vimfiles
git submodule init
git submodule update
```

###  设置代理
```
export http_proxy="http://127.0.0.1:8118"
export https_proxy="http://127.0.0.1:8118"

```

###  取消代理
```
git config --global --unset http.proxy
git config --global --unset https.proxy
```

