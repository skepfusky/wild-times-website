<template>
  <div class="cd-wrapper" :class="[isAdmin ? 'has-admin' : '', isMod ? 'has-mod' : '']">
    <div class="cd-info">
      <img
        :src="require(`@/assets/img/${userAvatar}`)"
        :alt="`${userName}'s avatar`"
        :aria-label="`${userName}'s avatar`"
      />
      <div class="mobile-wrapper">
        <h2>{{ userName }}</h2>
        <span :class="[isAdmin ? 'has-admin' : 'role-none']">Admin lol</span>
        <span :class="[isMod ? 'has-mod' : 'role-none']">Mod lol</span>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "UserCard",
  props: {
    userAvatar: { type: String, default: "placeholder.png" },
    userName: { type: String },
    userPos: { type: String },
    isAdmin: { type: Boolean },
    isMod: { type: Boolean }
  },
};
</script>

<style lang="scss" scoped>
$hover-out: 65%;
$hover-in: 90%;

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
    @include flex-param(center, center, row);
    text-align: left;
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

    h2,
    p {
      cursor: default;
      margin-top: 10px;
      padding: 0;
    }
  }
}

.mobile-wrapper {
  margin-left: 15px;
}

@media only screen and (min-width: 768px) {
  .cd {
    &-info {
      @include flex-param(center, center, column);
    }
  }
  h2 {
    text-align: center;
  }
  .mobile-wrapper {
    margin-left: 0;
  }
}

$admin-color: mix(green, black, 75%);
$mod-color: mix(cyan, black, 50%);
$pos-width: 2px;

.has {
  &-admin,
  &-mod {
    span {
      background: none;
      width: 6.5rem;
      padding: 2px 0.5rem;
      border-radius: 20px;
      font-size: 90%;
      font-weight: bold;
      margin-top: 10px;

      &:hover {
        transform: none;
        background: none;
      }
    }
  }

  &-admin {
    background: rgba($admin-color, $hover-out);
    @extend .cd-wrapper;

    &:hover {
      background: rgba($admin-color, $hover-in);
    }
    span {
      color: lighten(green, 12%);
      border: $pos-width solid lighten(green, 12%);
    }
  }

  &-mod {
    background: rgba($mod-color, $hover-out);
    @extend .cd-wrapper;

    &:hover {
      background: rgba($mod-color, $hover-in);
    }
    span {
      color: lighten(cyan, 12%);
      border: $pos-width solid lighten(cyan, 12%);
    }
  }
}

.role-none {
  display: none;
}
</style>