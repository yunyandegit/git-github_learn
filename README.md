# 一、仓库git-github_learn的介绍  
&emsp;&emsp;一个分享如何使用git/github的笔记的仓库。  
___  

# 二、免责声明：
&emsp;&emsp;笔记**仅供分享给大家学习使用，不会用作任何商业用途**，如果有人**用作非学习用途构成的侵权行为，与本人无关，请自行承担责任**。   
___  

# 三、使用说明以及参考来源：
&emsp;&emsp;1.本仓库上传了一份关于如何使用git/github的笔记，笔记文件为"**根据b站整理的Github教程.docx**"，大家可以下载阅读。  
&emsp;&emsp;2.该笔记是学习b站up主**冯雨**分享的视频教程[**Github 新手够用指南 | 全程演示&个人找项目技巧放送**](https://www.bilibili.com/video/BV1e541137Tc/?spm_id_from=333.337.search-card.all.click&vd_source=ffb19c330efad3ae5d7d43710d936b1f)、[**40 分钟学会 Git | 日常开发全程大放送&搭配Github而记录的笔记**](https://www.bilibili.com/video/BV1db4y1d79C/?spm_id_from=333.999.0.0&vd_source=ffb19c330efad3ae5d7d43710d936b1f)，笔记来源于本人。**若有侵权，请联系本人删除**。由于本次笔记字数很多，笔误以及错别字可能很常见，若读者发现笔记有错误，欢迎批评指正。  
&emsp;&emsp;3.其他参考链接：[**什么是版本控制？为什么要有版本控制？常用的版本控制工具有哪些？_版本控制是什么意思-CSDN博客**](https://blog.csdn.net/Roaddd/article/details/119800942)、[**github代码比对颜色介绍**](https://blog.csdn.net/qq_43683622/article/details/128170125)、[**删除仓库中的文件**](https://docs.github.com/zh/repositories/working-with-files/managing-files/deleting-files-in-a-repository)。  
&emsp;&emsp;4.本次笔记所包含的内容如下图所示：
![本次笔记的目录](image.png)  

# 四、常用命令的记录
## 1.远程连接时的补充  
&emsp;&emsp;注意：再与连接进行连接时，先保证本地仓库不能为空且已经提交过至少一次仓库，然后按下面的命令执行。（有时需注意先pull再push）
```python
git remote add origin https://github.com/yunyandegit/Personal-learning-notes-on-Zotero.git   ＃ 将本地的Git仓库与远程仓库进行关联
git branch -M main   # 将当前分支重命名为"main"
git branch --set-upstream-to=origin/main main  # 设置追踪信息以关联本地 main 分支和远程 origin/main 分支
git pull --allow-unrelated-histories  # 合并两个不相关的Git历史时使用

git push -u origin main    # 用于将本地分支推送到远程仓库
git pull  # 拉取远程分支最新的提交到本地
git push  # 推送当前分支最新的提交到远程
```