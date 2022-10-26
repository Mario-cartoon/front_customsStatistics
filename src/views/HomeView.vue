<template>
  <backTheme title-head="Главная странница">
 
    <el-space wrap size="large">
    <el-card v-for="i in 5" :key="i" class="box-card" style="width: 250px">
        <DoughnutChart />
    </el-card>
  </el-space> 
   
    <el-card style="width: 250px">
      <BarChart />
    </el-card>  
</backTheme>
    
</template>
 <script setup lang="ts">
 import { ref } from 'vue'
 import BarChart from '@/components/chart/barChart.vue'
 import DoughnutChart from '@/components/chart/doughnutChart.vue'
import backTheme from '@/components/layout/backTheme.vue';

</script>
<style>

</style>