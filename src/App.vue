<template>
  
  <section class="section-wrapper-mini">
    <div class="squish">
      <h2>Rules</h2>
      <ol>
        <li>Lorem, ipsum dolor sit amet consectetur adipisicing.</li>
        <li>Minus non modi fugit, rerum quae quos?</li>
        <li>Obcaecati eius amet blanditiis? Est, id dolorum.</li>
        <li>Corporis eos labore quam hic molestiae illo!</li>
        <ol id="sub-section">
          <li>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Animi assumenda cum quo magnam perspiciatis.</li>
          <li>Ipsa ea dicta, eveniet nostrum, temporibus veritatis sit, quaerat doloribus voluptatibus modi magnam dolorem?</li>
          <li>Non ex qui iste suscipit, aliquid atque dolorum voluptates dolores et, numquam autem hic!</li>
          <li>Corporis, animi quis rem dicta obcaecati deleniti reprehenderit minima dignissimos exercitationem quisquam ullam sequi.</li>
          <li>Amet vel veniam, ad at fugiat officiis illo a earum illum enim impedit dolore!</li>
          <li>Rem possimus dolorem dolore nesciunt molestias, laborum deserunt soluta, quam nulla doloremque est. Perspiciatis!</li>
          <li>Ullam reiciendis fuga praesentium veritatis quas, dignissimos ex, eveniet quia, dicta excepturi ea perferendis!</li>
        </ol>
        <li>Tempore, quidem ad eveniet esse aliquid non?</li>
      </ol>
    </div>
  </section>
  <section class="section-wrapper-mini">
    <div class="squish">
      <h2>Server staff lol</h2>
      <div class="card-layout">
        <UserCard />
        <UserCard />
        <UserCard />
        <UserCard />
        <UserCard />
        <UserCard />
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
import UserCard from "./components/UserCard.vue";

export default {
  name: "wild-times",
  components: {
    UserCard,
  },
};
</script>

<style lang="scss">
@import "assets/scss/mixins.scss";

// Some boring crap
body {
  overflow-x: hidden;
}

*,
*::before,
*::after {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
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
    background: lighten(green, 25%);
  }
  &:nth-child(even) {
    background: lighten(green, 15%);
  }
}

.section-wrapper {
  &-mini {
    padding-block: 2rem;

    ol {
      margin-left: 1.5rem;

      #sub-section {
        li {
          list-style-type: lower-alpha;
        }
      }
    }

    li {
      &::marker {
        color: darkblue !important;
      }
    }
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
