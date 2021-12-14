<template>
  <div
    class="card-wrapper"
    :class="[
      isOwner ? 'is-owner' : '',
      isAdmin ? 'is-admin' : '',
      isMod ? 'is-mod' : '',
      isServerBooster ? 'is-server-booster' : '',
      ]">
    <div class="card-info">
      <img
        :src="require(`@/assets/img/${userAvatar}`)"
        :alt="`${userName}'s avatar`"
        :aria-label="`${userName}'s avatar`"
      />
      <div class="mobile-wrapper">
        <h2>{{ userName }}</h2>
        <span v-if="isOwner" class="is-owner">Owner, lol</span>
        <span v-if="isAdmin" class="is-admin">Admin</span>
        <span v-if="isMod" class="is-mod">Mod</span>
        <span v-if="isServerBooster" class="is-server-booster">Server Booster</span>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "UserCard",
  props: {
    userAvatar: { type: String, default: "placeholder.png" },
    userName: String,
    userPos: String,
    isAdmin: Boolean,
    isMod: Boolean
  },
};
</script>

<style lang="scss" scoped>
$hover-out: 65%;
$hover-in: 90%;

$black-mix: mix(black, royalblue, 75%);
.card {
  &-wrapper {
    @include flex-param(center, unset, row);
    margin: 0 auto;
    width: 100%;
    background: rgba($black-mix, $hover-out);
    border-radius: 5px;
    transform: translateY(0);
    transition: background $hover-time ease, transform $hover-time ease;

    &:hover {
      transform: translateY(-4px);
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
      pointer-events: none;
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
  .card {
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
$owner-color: hotpink;
$booster-color: mix(white, white, 20%);
$pos-width: 2px;

.is {
  &-owner,
  &-admin,
  &-mod,
  &-server-booster {
    cursor: default;
    @extend .card-wrapper;

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