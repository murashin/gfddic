# 地球流体力学用語辞書

## Microsoft IME 2000/2002形式辞書

gfddic_msime.txt をご利用ください。


## かんな辞書

gfddic.tをご利用ください。


### インストール方法

まず、mkbindicします。

~~~
$ mkbindic gfddic.t
~~~

こうすると、gfddic.cld と gfddic.cbd が生成されます。
生成された二つのファイルを、かんなのシステム辞書ディレクトリにコピーします。

かんなのシステム辞書ディレクトリ(例えば、/usr/local/share/canna/dic/canna など)
にあるdics.dirを修正しましょう。
修正は必ずcannaserverを起動していない状態で行いましょう. 

~~~
gfddic.cld(gfddic.mwd)  -gfddic---
gfddic.cbd(gfddic.mwd)  -gfddic---
~~~

と書けばOKです。

付属するMakefileはFreeBSD環境向けです。(特にinstallターゲット)


Copyright 2011-2016 &copy; Shin-ya Murakami murashin _at_ gfd-dennou.org
