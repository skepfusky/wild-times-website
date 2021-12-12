<template>
  <div id="construction-toast">
    <i class="fas fa-2x fa-exclamation-triangle"></i>
    <p><strong>This site is still under construction!</strong> There are some missing or filler content that are not completed yet. Proceed with caution, you might die of too much cringe!</p>
  </div>
  <wt-main />
  <wt-rules />
  <wt-staff />
  <wt-footer />
</template>

<script>
import WtMain from './layouts/WtMain.vue';
import WtRules from "./layouts/WtRules.vue";
import WtStaff from './layouts/WtStaff.vue';
import WtFooter from './layouts/WtFooter.vue';

export default {
  components: { WtMain, WtRules, WtStaff, WtFooter }
};
</script>

<style lang="scss">
#construction-toast {
  border-top: 3px solid red;
  padding: 1.25rem;
  @include flex-param(unset, center, row);
  column-gap: 1rem;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  background-size: 56.57px 56.57px;
  background-image: linear-gradient(
    45deg,
    #910000 25%,
    #660000 25%,
    #660000 50%,
    #910000 50%,
    #910000 75%,
    #660000 75%,
    #660000 100%
  );
  animation: bruh 500ms ease;
  z-index: 69;
}

@keyframes bruh {
  0% {transform: translateY(-90px); opacity: 1;}
  60% {transform: translateY(0px); opacity: 1;}
}
</style>