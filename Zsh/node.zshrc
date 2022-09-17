# Yarn
export PATH="$HOME/.yarn/bin:$PATH"

yarn-add-eslint () {
  yarn add --dev \
    eslint-config-react-app@2.1.0 \
    babel-eslint@^7.2.3 \
    eslint@^4.1.1 \
    eslint-plugin-flowtype@^2.34.1 \
    eslint-plugin-import@^2.6.0 \
    eslint-plugin-jsx-a11y@^5.1.1 \
    eslint-plugin-react@^7.1.0
}

yarn-nuke () {
  rm -fr ./node_modules \
  && yarn cache clean \
  && rm -fr ./yarn.lock
}
