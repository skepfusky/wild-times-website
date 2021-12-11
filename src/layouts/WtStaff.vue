<template>
  <section class="section-wrapper-mini">
    <div class="squish-el">
      <h2>Server staff lol</h2>
      <div class="card-layout">
        <user-card userName="Jin" :isAdmin="true" />
        <user-card userName="Jungkook" :isAdmin="true" />
        <user-card userName="Jimin" :isMod="true" />
        <user-card userName="Taehyung" :isAdmin="true" />
        <user-card userName="Namjoon" />
        <user-card userName="Yoongi" />
        <user-card userName="Hoseok" :isAdmin="true" />
        <user-card userName="Hoseok"  />
        <user-card userName="Hoseok" :isMod="true" />
      </div>
    </div>
  </section>
</template>

<script>
import UserCard from "../components/UserCard.vue";

export default {
  name: "WtStaff",
  components: {
    UserCard,
  },
};
</script>

<style lang="scss" scoped>
.card-layout {
  display: grid;
  padding: 0 1rem;
  grid-template-columns: repeat(auto-fit, minmax(21rem, 1fr));
  gap: 1.5rem;
}

@media only screen and (min-width: 768px) {
.card-layout {
  grid-template-columns: repeat(auto-fit, minmax(18rem, 1fr));
}
}
</style>