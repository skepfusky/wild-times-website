<template>
  <footer>
    <div id="copyright">&copy; {{ new Date().getFullYear()}} | site built by @skepfusky in <img alt="Vue logo" src="./assets/img/vue-logo.png"> Vue.js.</div>
    <div id="social-row">
      <ul>
        <li><a target="__blank" href="#">social shit</a></li>
        <li><a target="__blank" href="#">social shit</a></li>
        <li><a target="__blank" href="#">social shit</a></li>
        <li><a target="__blank" href="#">social shit</a></li>
        <li><a target="__blank" href="#">social shit</a></li>
      </ul>
    </div>
  </footer>
</template>

<script>
export default {
  name: 'wild-times',
}
</script>

<style lang="scss">
// Color palette

// Mixins
@mixin flex-param($hcenter: center, $vcenter: center, $dir: row) {
  display: flex;
  display: -webkit-flex;
  justify-content: $hcenter;
  align-items: $vcenter;
  flex-direction: $dir;
}

// Some boring crap
*, *::before, *::after {
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
  font-family: 'Lato', 'Noto Sans KR', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
  font-size: 110%;
}
// Da meat
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
