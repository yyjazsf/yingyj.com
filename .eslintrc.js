const prod = process.env.NODE_ENV === 'production';
const OFF = 0;
const ERROR = 2;

module.exports = {
  root: true,
  env: {
    node: true,
  },
  extends: ['plugin:vue/vue3-essential', '@vue/airbnb'],
  parserOptions: {
    parser: 'babel-eslint',
  },
  rules: {
    'no-console': prod ? [ERROR, { allow: ['warn', 'error'] }] : OFF,
    'no-debugger': prod ? ERROR : OFF,
    'import/prefer-default-export': OFF,
  },
  globals: {},
};
