<template>
  <div class="main-container">
    <div class="list">
      <div class="item" v-for="item in 8" :key="item">
        <img alt="Vue logo" src="../assets/logo.png">
        <h3 class="title">{{ `Title${item}` }}</h3>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'Main'
  }
</script>

<style lang="scss" scoped>

</style>