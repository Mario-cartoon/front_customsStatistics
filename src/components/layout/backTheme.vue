<template>
    <div class="container">
        <div class="container__top">  
            <div class="container__top--title">
                <h1>{{titleHead}}</h1> 
            </div>
        </div>
        <div class="container__bottom">
           <div class="container__bottom--items">
            <slot/>
           </div> 
        </div>
    </div>
</template>
<script setup lang="ts">
import { onMounted, ref, defineProps} from 'vue'
const props = defineProps({
    titleHead:{
        type: String, 
        default:null
    }
})
</script>
<style lang="scss">
.container{
    display: flex;
    flex-direction: column;
    width: 100%;
    height: 100vh;
    &__top{
        display: flex;
        color: white;
        background-color: rgb(94, 120, 192);
        height: 300px;
        width: 100%;
        &--title{
            padding: 15px 0 0 20px ;
        }
        
    }
    &__bottom{ 
        display: flex;  
        flex-direction: column;
        // justify-content: center;
        margin-top: -20px;
        box-shadow: 3px 1px 19px 5px rgba(19, 28, 88, 0.22);
        border-radius: 20px 20px 0 0;
        height: 100%;
        background-color: rgb(255, 255, 255);
        &--items{ 
            margin-top: -70px;
        }
    }
}
</style>