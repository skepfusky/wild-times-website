<template>
  <div class="cd-wrapper" :class="[isAdmin ? 'has-admin' : '', isMod ? 'has-mod' : '']">
    <div class="cd-info">
      <img
        :src="require(`@/assets/img/${userAvatar}`)"
        :alt="`${userName}'s avatar`"
        :aria-label="`${userName}'s avatar`"
      />
      <h2>{{ userName }}</h2>
      <p :class="[isAdmin ? 'has-admin' : '', isMod ? 'has-mod' : '']">{{ userPos }}</p>
    </div>
  </div>
</template>

<script>
export default {
  name: "UserCard",
  props: {
    userAvatar: { type: String, default: "placeholder.png" }, // use my stupid profile pic when value is not defined
    userName: { type: String, default: "Name" },
    userPos: { type: String, default: "Role" },
    isAdmin: { default: false },
    isMod: { default: false }
  },
};
</script>

<style lang="scss" scoped>
$hover-out: 65%;
$hover-in: 90%;
$hover-time: 250ms;

$black-mix: mix(black, royalblue, 75%);
.cd {
  &-wrapper {
    @include flex-param(center, unset, row);
    margin: 0 auto;
    width: 100%;
    background: rgba($black-mix, $hover-out);
    border-radius: 5px;
    transform: scale(1) translateY(0px);
    transition: background $hover-time ease, transform $hover-time ease;

    &:hover {
      transform: scale(1.03) translateY(-4px);
      background: rgba($black-mix, $hover-in);
    }
  }

  &-info {
    @include flex-param(center, center, column);
    text-align: center;
    height: 20rem;
    box-shadow: 0 0 12px rgba($black-mix, 25%);
    border-radius: 6px;
    padding: 1rem;
    width: 100%;

    img {
      width: 150px;
      border-radius: 50%;
      box-shadow: 0 0 24px rgba(mix(white, royalblue, 75%), 35%);
    }

    :is(h2, p) {
      cursor: default;
      margin-top: 10px;
      padding: 0;
    }
  }
}

.has {
  :is(&-admin, &-mod) {
    p {
      background: none;

      &:hover {
        transform: none;
        background: none;
      }
    }
  }

  &-admin {
    background: rgba(mix(green, black, 75%), $hover-out);
    @extend .cd-wrapper;

    &:hover {
      background: rgba(mix(green, black, 75%), $hover-in);
    }
    p {
      color: lighten(green, 12%);
    }
  }
}
</style>