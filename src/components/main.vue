<template>
  <div class="main-container">
    <div class="list"  v-if="dataList.length > 0">
      <div class="item" v-for="item in dataList" :key="item._id">
        <img alt="view" :src="getImage(item.file)" class="image">
        <h3 class="title">{{ item.stitle }}</h3>
      </div>
    </div>
    <div v-else>資料載入中...</div>
  </div>
</template>

<script>
  export default {
    name: 'Main',
    data() {
      return {
        dataList: []
      }
    },
    created() {
      this.getTaipeiData()
    },
    methods: {
      getTaipeiData() {
        let url = 'https://padax.github.io/taipei-day-trip-resources/taipei-attractions.json'
        fetch(url)
          .then(res => res.json())
          .then((out) => {
            this.dataList = out.result.results.slice(0,8)
          })
      },
      getImage(url) {
        return url.split('jpg')[0] + 'jpg'
      }
    }
  }
</script>

<style lang="scss" scoped>

</style>