<template>
  <footer>
    <div id="wrapper">
      <p>
        Site built by Skepfusky
        <span style="opacity: .75; filter: opacity(75%);">#2002</span> in
        <img alt="Vue logo" src="../assets/img/vue-logo.png" /> <strong>Vue.js</strong>.
      </p>
      <ul>
        <li><a target="__blank" href="#"><i class="fab fa-youtube"></i></a></li>
        <li><a target="__blank" href="#"><i class="fab fa-twitter"></i></a></li>
        <li><a target="__blank" href="#"><i class="fab fa-github"></i></a></li>
        <li><a target="__blank" href="#"><i class="fab fa-spotify"></i></a></li>
      </ul>
    </div>
  </footer>
</template>

<style lang="scss" scoped>
footer {
  @include flex-param(center, center, row);
  background: darken(royalblue, 46%);
  padding: 2rem 1.65rem;
  font-size: 90%;

  ul {
    @include flex-param(center, unset, row);
  }
}
#wrapper {
  @include flex-param(space-between, center, row);
  margin-right: 0;
  width: 1280px;
  cursor: default;

  p {margin-right: .45rem;}

  a {margin-left: .4rem;}

  img {
    position: relative;
    top: 2px;
    width: 17px;
    pointer-events: none;
  }
}

a {
  padding: 0.5rem;
  border: 1px solid gray;
  border-radius: 4px;
  transition: border 300ms ease;
  cursor: pointer;

  &:hover {border-color: white;}
}
</style>