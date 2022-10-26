<template>
  <div style="display:flex;">
    <sideBar></sideBar> 
    <router-view/>
  </div>
  <!-- {{count}}
  <el-button>I am ElButton</el-button>
  <nav>
    <router-link to="/">Home</router-link> |
    <router-link to="/about">About</router-link>
  </nav> -->
</template>
<script lang="ts" setup>
import sideBar from '@/components/layout/sideBar.vue';
// import { ElButton } from 'element-plus'
// import { onMounted, ref } from 'vue'
// const count = ref(0)
// onMounted(()=>{
//   count.value++
// })
</script>
<style lang="scss">
@import url('https://fonts.googleapis.com/css2?family=Raleway:wght@600&display=swap');
#app {
  font-family: 'Raleway', sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
body{
  margin: 0;
}
nav {
  // padding: 30px;

  a {
    font-weight: bold;
    color: #2c3e50;

    &.router-link-exact-active {
      color: #42b983;
    }
  }
}
</style>
