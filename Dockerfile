# 使用官方 Node.js 镜像作为基础
FROM node:14-alpine

# 创建工作目录
WORKDIR /usr/src/app

# 复制 package.json 和 package-lock.json
COPY package*.json ./

# 安装依赖
RUN npm install

# 复制应用源代码
COPY . .

# 暴露应用运行的端口
EXPOSE 8080

# 定义启动命令
CMD ["npm", "start"]