mod env 'script/env.just'
# 显示可用命令
default:
    @just --list

# 打印问候语
hello:
    echo "你好，just！"

# 显示当前目录
where:
    pwd
    ls
    ifconfig

# 显示当前目录的文件
files:
    ls -la

    # 向指定的人打招呼
greet name age:
    echo "你好，{{name}}！ , {{age}}"

# 先显示目录，再列出文件
inspect: where files
    echo "ok"