
  <template>
   <div>
     <h1 class="box">App.vue -- {{ username }}</h1>
     <button>修改用户名</button>
     <el-row>
       <el-button>默认按钮</el-button>
       <el-button type="primary">主要按钮</el-button>
       <el-button type="success">成功按钮</el-button>
       <el-button type="info">信息按钮</el-button>
       <el-button type="warning">警告按钮</el-button>
       <el-button type="danger">危险按钮</el-button>
     </el-row>
     <el-row>
       <el-button icon="el-icon-search" circle></el-button>
       <el-button type="primary" icon="el-icon-edit" circle></el-button>
       <el-button type="success" icon="el-icon-check" circle></el-button>
       <el-button type="info" icon="el-icon-message" circle></el-button>
       <el-button type="warning" icon="el-icon-star-off" circle></el-button>
       <el-button type="danger" icon="el-icon-delete" circle></el-button>
     </el-row>
<!--     <span class="demonstration">默认</span>-->
     <el-date-picker
       v-model="value1"
       type="date"
       placeholder="选择日期">
     </el-date-picker>
   </div>
  </template>

  <script>
    //默认导出
    export default {
      data() {  //数据源必须是函数
        return {
          username: 'admin'
        }
      }
    }
  </script>

  <style>
    .box{
      background-color: rebeccapurple;
    }
  </style>
<!--<template>-->
<!--  <div id="app">-->
<!--    <img src="./assets/logo.png">-->
<!--    <router-view/>-->
<!--  </div>-->
<!--</template>-->

<!--<script>-->
<!--export default {-->
<!--  name: 'App'-->
<!--}-->
<!--</script>-->

<!--<style>-->
<!--#app {-->
<!--  font-family: 'Avenir', Helvetica, Arial, sans-serif;-->
<!--  -webkit-font-smoothing: antialiased;-->
<!--  -moz-osx-font-smoothing: grayscale;-->
<!--  text-align: center;-->
<!--  color: #2c3e50;-->
<!--  margin-top: 60px;-->
<!--}-->
<!--</style>-->
