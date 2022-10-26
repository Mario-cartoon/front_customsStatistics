<template>
  <div class="common-layout">
    <el-container>
      <el-header>
        <h1>Wellcome</h1>
      </el-header>
      <el-main>
        <div class="main__conteiner">
            {{activeName}}
        <el-tabs v-model="activeName" class="demo-tabs" @tab-click="handleClick">
            <el-tab-pane label="Авторизация" name="first" >
                <HelloWorld/>
            </el-tab-pane>
            <el-tab-pane label="Регистрация" name="second">Config</el-tab-pane> 
        </el-tabs> 
        </div>
      </el-main>
    </el-container>
  </div>
  </template>
  <script lang="ts" setup>
  import { ref } from 'vue'
  import HelloWorld from '@/components/HelloWorld.vue';
  import type { TabsPaneContext } from 'element-plus'
  
  const activeName = ref('first')
  
  const handleClick = (tab: TabsPaneContext, event: Event) => {
    console.log(tab, event)
  }
  </script>
  <style>
  .demo-tabs > .el-tabs__content {
    padding: 32px;
    color: #6b778c;
    font-size: 40px;
    font-weight: 600; 
  }
  .main__conteiner{
    display: flex;
    align-items: center;
    justify-content: center;
  }
  </style>
  