<template>
    <a-button @click="CreateTable">页面生成</a-button>
</template>

<script lang="ts" setup>
 import {router} from "/@/router";

 function CreateTable() {
   router.push('/src/views/create/components/steps')
 }
</script>

