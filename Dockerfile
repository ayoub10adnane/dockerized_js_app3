# 使用 Node.js 的官方镜像
FROM node:16

# 设置工作目录
WORKDIR /app

# 复制依赖文件并安装依赖
COPY package.json package-lock.json ./
RUN npm install

# 复制项目文件
COPY . .

# 暴露应用使用的端口
EXPOSE 3000

# 定义容器启动时运行的命令
CMD ["npm", "start"]