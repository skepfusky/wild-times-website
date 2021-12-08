<template>
  <section class="section-wrapper-mini">
    <div class="squish-el">
      <h2>Server staff lol</h2>
      <div class="card-layout">
        <user-card userName="Jin" userPosition="Singer" />
        <user-card userName="Jungkook" userPosition="Singer" />
        <user-card userName="Jimin" userPosition="Singer" />
        <user-card userName="Taehyung" userPosition="Singer" />
        <user-card userName="Namjoon" userPosition="Rapper" />
        <user-card userName="Yoongi" userPosition="Rapper" />
        <user-card userName="Hoseok" userPosition="Rapper" />
      </div>
    </div>
  </section>
</template>

<script>
import UserCard from "../components/UserCard.vue"

export default {
  name:'WtStaff',
  components:{
    UserCard
  }
}
</script>

<style lang="scss" scoped>
.card-layout {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 1.5rem;
}
</style>