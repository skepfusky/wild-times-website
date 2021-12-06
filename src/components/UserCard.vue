<template>
  <div class="cd-wrapper">
    <div class="cd-info">
      <img :src="require(`@/assets/img/${avatar}`)" alt="User avatar" aria-label="User avatar">
      <h2>{{ name }}</h2>
      <p>{{ role }}</p>
    </div>
  </div>
</template>

<script>
export default {
  name: 'UserCard',
  props: {
    avatar: {type: String, default: "skep.png"}, // use my stupid profile pic when value is not defined lol
    name: {type: String, default: "Name"},
    role: {type: String, default: "Role"}
  }
}
</script>

<style lang="scss" scoped>
@import '../assets/scss/mixins.scss';

.cd {
  &-wrapper {
    @include flex-param(center, unset, row);
    margin: 0 auto;
    width: 19.5rem;
  }

  &-info {
    @include flex-param(center, center, column);
    text-align: center;
    height: 20rem;
    box-shadow: 0 0 12px rgba(black, 25%);
    border-radius: 6px;
    padding: 1rem;
    width: 100%;

    img {
      width: 127px;
      border-radius: 16px;
      box-shadow: 0 0 12px rgba(black, 10%);
    }

    :is(h2, p) {
      cursor: default;
      margin-top: 8px;
    }
  }
}
</style>