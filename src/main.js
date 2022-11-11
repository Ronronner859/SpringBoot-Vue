// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
//该文件是整个项目的入口文件

//引入vue这个包 得到VUE 构造函数
import Vue from 'vue'
//引入app组件 讲把APP.vue中的模板构造 渲染到HTML页面中
import App from './App'

import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';

Vue.use(ElementUI);

import router from './router'

Vue.config.productionTip = false

/* eslint-disable no-new */
// 创建Vue的实例对象
new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
})
