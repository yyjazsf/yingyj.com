echo "install nvm node yarn"
# install nvm  https://github.com/nvm-sh/nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

# export NVM_NODEJS_ORG_MIRROR=http://npm.taobao.org/mirrors/node
# echo "export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm" >> .zshrc

source ~/.zshrc

nvm install --lts
nvm use --lts

# install yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt update && sudo apt install --no-install-recommends yarn

yarn config set registry https://registry.npm.taobao.org # 注册模块镜像
yarn config set disturl https://npm.taobao.org/dist # node-gyp 编译依赖的 node 源码镜像

## 以下选择添加
yarn config set sass_binary_site https://npm.taobao.org/mirrors/node-sass # node-sass 二进制包镜像
yarn config set electron_mirror https://npm.taobao.org/mirrors/electron/ # electron 二进制包镜像
yarn config set puppeteer_download_host https://npm.taobao.org/mirrors # puppeteer 二进制包镜像
yarn config set chromedriver_cdnurl https://npm.taobao.org/mirrors/chromedriver # chromedriver 二进制包镜像
yarn config set operadriver_cdnurl https://npm.taobao.org/mirrors/operadriver # operadriver 二进制包镜像
yarn config set phantomjs_cdnurl https://npm.taobao.org/mirrors/phantomjs # phantomjs 二进制包镜像
yarn config set selenium_cdnurl https://npm.taobao.org/mirrors/selenium # selenium 二进制包镜像
yarn config set node_inspector_cdnurl https://npm.taobao.org/mirrors/node-inspector # node-inspector 二进制包镜像
yarn config set SQLITE3_BINARY_SITE https://npm.taobao.org/mirrors/sqlite3 # sqlite3 二进制包镜像

yarn cache clean # 清空缓存

echo "install yarn global package"
yarn global add pm2 zx
