<template>
  <div id="app">
    <div class="box">
      <div class="container"> 
        <form v-on:submit.prevent="send_search">
          <h1 class="title">Filtre por aqui</h1>
          <input type="text" placeholder="Nome do(a) profissional">
          <input type="number" placeholder="valor">
          até
          <input type="number" placeholder="valor">
          <button type="submit">Pesquisar</button>
        </form>
      </div>
    </div>
    <div class="box">
      <div class="container"> 
        <section>
          <ul>
            <li v-for="user in users" :key="user">
              <p>{{ user.attributes.results }}</p>
            </li>
          </ul>
        </section>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  data: function () {
    return {
      users: []
    }
  },
   created() {
    this.fetchUsers()
  },
  methods: {
    // send_search() {
    //   console.log(form.name , form.number_from, form.number_to )
    // },
    async fetchUsers() {
      try {
        const { data } = await axios.get('https://horadotreino-staging-api.herokuapp.com/api/v1/pages/search.json')
        this.users = data
        console.log(this.users)
      } catch (error) {
        console.warn(error)
      }
    },
  }
}
</script>

<style scoped>
.box {
  border: 1px solid black;
  border-radius: 8px;
  width: 340px;
  margin: auto;
  margin-top: 40px;
}
p {
  font-size: 1em;
  text-align: center;
}
.container {
  margin: 4rem auto;
  max-width: 500px;
  width: 90%;
  display: grid;
  grid-gap: 2.5rem;
}
.title {
  font-size: 1.5rem;
  font-weight: 500;
  margin: 1.5rem 0;
}
form {
  display: grid;
  grid-gap: 1rem;
}

input {
  background: transparent;
  border: 1px solid #999fc6;
  border-radius: 1rem;
  padding: 0.6rem;
  outline: none;
  color: #141414;
  width: 18rem;
}

input::placeholder {
  color: #999fc6;
}

button {
  height: 30px;
  cursor: pointer;
  font-family: tahoma,Sans-serif;
  font-weight: 700;
  fill: #000;
  color: #000;
  background-color: transparent;
  background-image: linear-gradient(180deg,#31cfb0 0%,#5de563 100%);
  border-radius: 35px;
  box-shadow: 0 0 25px 0 rgb(0 0 0 / 50%);
}

</style>
