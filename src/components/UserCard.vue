<template>
  <div class="cd-wrapper">
    <div class="cd-info">
      <img :src="require(`@/assets/img/${userAvatar}`)" :alt="`${userName}'s avatar`" :aria-label="`${userName}'s avatar`">
      <h2>{{ userName }}</h2>
      <p>{{ userPosition }}</p>
    </div>
  </div>
</template>

<script>
export default {
  name: 'UserCard',
  props: {
    userAvatar: {type: String, default: "skep.png"}, // use my stupid profile pic when value is not defined
    userName: {type: String, default: "Name"},
    userPosition: {type: String, default: "Role"}
  }
}
</script>

<style lang="scss" scoped>
.cd {
  &-wrapper {
    @include flex-param(center, unset, row);
    margin: 0 auto;
    width: 100%;
    background: rgba(black, 50%);
    border-radius: 5px;
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
      width: 150px;
      border-radius: 50%;
      box-shadow: 0 0 24px rgba(mix(white, royalblue, 75%), 50%);
    }

    :is(h2, p) {
      cursor: default;
      margin-top: 8px;
      padding: 0;
    }
  }
}
</style>