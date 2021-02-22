<template>
  <div id="app">
    <Header></Header>
    <div class="content">
      <h1 class="title">Welcome to MyHome</h1>
    </div>
    <Main></Main>
  </div>
</template>

<script>

import Header from './components/header'
import Main from './components/main'
export default {
  name: 'App',
  components: {
    Header,
    Main
  }
}
</script>

<style>

</style>
