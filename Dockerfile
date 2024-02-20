FROM node:20

# 设置工作目录
WORKDIR /usr/src/app

# 将 package.json 和 package-lock.json 复制到工作目录
COPY package*.json ./

# 安装应用程序依赖
RUN npm install

# 将应用程序源代码复制到工作目录
COPY . .

# 暴露应用程序运行的端口
EXPOSE 3000

# 启动应用程序
CMD ["node", "app.js"]
