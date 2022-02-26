/* eslint no-console: 0 */

import Vue from 'vue/dist/vue.esm'

import '../filters/index.js.erb';
import '../components/index.js.erb';

document.addEventListener('DOMContentLoaded', () => {
  const elements = document.getElementsByClassName('vue');
  for (let i = 0; i < elements.length; i++) {
    let element = elements[i];
    let app = new Vue({}).$mount(element);
    console.log("Loaded Vue", app);
  }
})