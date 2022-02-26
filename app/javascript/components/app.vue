<template>
  <div id="app">
    <div class="box">
      <p>This is an example of how to integrate Rails templates and Vue</p>
      <p>This paragraph is inside the app.vue component</p>
      <p>{{ message }}</p>
    </div>
  </div>
</template>

<script>
export default {
  data: function () {
    return {
      message: "This is a dynamic message from Vue!"
    }
  }
}
</script>

<style scoped>
.box {
  border: 1px solid black;
  border-radius: 8px;
  width: 340px;
  margin: auto;
}
p {
  font-size: 1em;
  text-align: center;
}
</style>
