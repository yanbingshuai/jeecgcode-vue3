<template>
  <PageWrapper>
    <template #headerContent>
      <div>点击以下按钮生成页面</div>
      <CreateNewcode />
    </template>
<!--    <div class="lg:flex">-->
<!--      <div class="lg:w-7/10 w-full !mr-4 enter-y">-->
<!--        <ProjectCard :loading="loading" class="enter-y" />-->
<!--        <DynamicInfo :loading="loading" class="!my-4 enter-y" />-->
<!--      </div>-->
<!--      <div class="lg:w-3/10 w-full enter-y">-->
<!--        <QuickNav :loading="loading" class="enter-y" />-->

<!--        <Card class="!my-4 enter-y" :loading="loading">-->
<!--          <img class="xl:h-50 h-30 mx-auto" src="../../../assets/svg/illustration.svg" />-->
<!--        </Card>-->

<!--        <SaleRadar :loading="loading" class="enter-y" />-->
<!--      </div>-->
<!--    </div>-->
  </PageWrapper>
</template>
<script lang="ts" setup>
  import { ref } from 'vue';
  import { PageWrapper } from '/@/components/Page';
  import CreateNewcode from './components/CreateNewcode.vue';

  const loading = ref(true);

  setTimeout(() => {
    loading.value = false;
  }, 500);
</script>
