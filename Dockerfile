# 使用官方 Python 镜像
FROM python:3.9-slim

# 设置工作目录
WORKDIR /app

# 复制依赖和代码
COPY requirements.txt .
RUN pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

COPY . .

# 暴露 Flask 端口
EXPOSE 5000

# 启动 Flask 应用
CMD ["python", "app.py"]
