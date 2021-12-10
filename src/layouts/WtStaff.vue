<template>
  <section class="section-wrapper-mini">
    <div class="squish-el">
      <h2>Server staff lol</h2>
      <div class="card-layout">
        <user-card isAdmin=true userName="Jin" userPos="Singer" />
        <user-card userName="Jungkook" userPos="Singer" />
        <user-card userName="Jimin" userPos="Singer, ass eater" />
        <user-card isAdmin="true" userName="Taehyung" userPos="Singer" />
        <user-card userName="Namjoon" userPos="Rapper" />
        <user-card userName="Yoongi" userPos="Rapper" />
        <user-card userName="Hoseok" userPos="Rapper" />
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