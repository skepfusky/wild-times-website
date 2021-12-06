<template>
  <header-hero/>
  <section class="section-wrapper-mini">
    <div class="squish">
      <h2>Server Rules</h2>
      <rule-container/>
    </div>
  </section>
  <section class="section-wrapper-mini">
    <div class="squish">
      <h2>Server staff lol</h2>
      <div class="card-layout">
        <user-card/>
        <user-card/>
        <user-card/>
        <user-card/>
        <user-card/>
        <user-card/>
      </div>
    </div>
  </section>
  <footer>
    <div id="copyright">
      &copy; {{ new Date().getFullYear() }}, site built by @skepfusky in
      <img alt="Vue logo" src="./assets/img/vue-logo.png" /> Vue.js.
    </div>
    <div id="social-row">
      <ul>
        <li><a target="__blank" href="#">youtube</a></li>
        <li><a target="__blank" href="#">twitter</a></li>
        <li><a target="__blank" href="#">instagram</a></li>
        <li><a target="__blank" href="#">github</a></li>
      </ul>
    </div>
  </footer>
</template>

<script>
// import { defineAsyncComponent } from '@vue/runtime-core';
  import HeaderHero from './components/HeaderHero.vue';
  import RuleContainer from "./components/RulesContainer.vue";
  import UserCard from "./components/UserCard.vue";

//const lazyBaby = defineAsyncComponent(() => {
//  import("./components/UserCard.vue")
//})

export default {
  components: {HeaderHero, RuleContainer, UserCard}
};
</script>

<style lang="scss">
@import 'https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&family=Noto+Sans+KR:wght@100;300;500;700&family=Poppins:ital,wght@0,500;0,700;1,500;1,700&display=swap';
@import "assets/scss/mixins.scss";

// Some boring crap
*,
*::before,
*::after {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  overflow-x: hidden;
}

a {
  text-decoration: none;
  color: inherit;
}

ul {
  list-style: none;
}

body {
  font-family: "Lato", "Noto Sans KR", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;
  font-size: 110%;
}

// Da meat
.squish {
  width: 1280px;
  margin: 0 auto;
}

section {
  &:nth-child(odd) {
    background: lighten(blue, 25%);
  }
  &:nth-child(even) {
    background: lighten(blue, 15%);
  }
}

.section-wrapper {
  &-mini {
    padding-block: 2rem;
  }
}

.card-layout {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 1rem;
}

footer {
  @include flex-param(center, center, column);
  width: 100%;
  background: darken(orchid, 25%);
  color: white;
  padding: 1rem 0;

  ul {
    @include flex-param(center, unset, row);
    margin-top: 7px;
  }

  li {
    margin-left: 20px;

    &:first-child {
      margin-left: 0;
    }
  }

  #copyright {
    img {
      position: relative;
      top: 2px;
      width: 17px;
    }
  }
}
</style>
