<template>
  <PageWrapper>
    <div>
      <a-steps :current="current">
        <a-step v-for="item in steps" :key="item.title" :title="item.title" />
      </a-steps>
      <div class="steps-content" v-if="steps[current] == steps[0]">
        <a-button @click="DadabaseConf">配置数据库</a-button>
      </div>
      <div class="steps-content" v-else-if="steps[current] == steps[1]">
        <div>
          <select v-model="selectedOption">
            <option disabled value="">请选择数据库</option>
            <option v-for="option in datasource" :value="option.id" :key="option.id">
              {{option.name}}
            </option>
          </select>
        </div>
      </div>
      <div class="steps-content" v-else="steps[current] == steps[2]">
        <a-button @click="CodeBuild">代码生成器</a-button>
      </div>
      <div class="steps-action">
        <a-button v-if="current < steps.length - 1" type="primary" @click="next">
          Next
        </a-button>
        <a-button
          v-if="current == steps.length - 1"
          type="primary"
          @click="$message.success('Processing complete!')"
        >
          Done
        </a-button>
        <a-button v-if="current>0" style="margin-left: 8px" @click="prev">
          Previous
        </a-button>
      </div>
    </div>
  </PageWrapper>
</template>

<script lang="ts">
  import { PageWrapper } from '/@/components/Page';
  import {router} from "/@/router";
  import { getDataSourceList } from "./api";
  export default {
    components: {
      PageWrapper
    },
    data() {
      return {
        selectedOption: '',
        datasource:[],
        current: 0,
        steps: [
          {
            title: 'First',
            content: 'First-content',
          },
          {
            title: 'Second',
            content: 'Second-content',
          },
          {
            title: 'Last',
            content: 'Last-content',
          },
        ],
      };
    },
    methods: {
      next() {
        this.current++;
      },
      prev() {
        this.current--;
      },
      DadabaseConf(){
        router.push('/monitor/datasource')
      },
      getdata(){
        getDataSourceList(1).then((res) => {
          console.log(res)
          for (let i = 0; i < res.records.length; i++) {
            this.datasource[i] = res.records[i]
          }})
      },
      CodeBuild(){
        router.push('/online/cgform')
      }
    },
    mounted() {
      this.getdata()
      // this.lokiLink = getLokiLink()
    }
  };
</script>

<style scoped>
  .steps-content {
    margin-top: 16px;
    border: 1px dashed #e9e9e9;
    border-radius: 6px;
    background-color: #fafafa;
    min-height: 200px;
    text-align: center;
    padding-top: 80px;
  }

  .steps-action {
    margin-top: 24px;
  }
</style>

