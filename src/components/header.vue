<template>
  <div class="nav">
    <h3 class="nav-title">My Website</h3>
    <img src="../assets/hamburger.png" alt="" class="nav-burder">
    <div class="nav-list">
      <div class="nav-item">Item1</div>
      <div class="nav-item">Item2</div>
      <div class="nav-item">Item3</div>
      <div class="nav-item">Item4</div>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'Header',
    data() {
      return {
        width: document.querySelector('body').offsetWidth
      }
    }
  }
</script>

<style lang="sass" scoped>

</style>