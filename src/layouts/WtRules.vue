<template>
  <section class="section-wrapper-mini">
    <div class="squish-el">
      <h2>Server Rules</h2>
      <ol>
        <li>Lorem, ipsum dolor sit amet consectetur adipisicing.</li>
        <li>Minus non modi fugit, rerum quae quos?</li>
        <li>Obcaecati eius amet blanditiis? Est, id dolorum.</li>
        <li>Corporis eos labore quam hic molestiae illo!</li>
        <ol id="sub-section">
          <li>
            Lorem ipsum dolor sit, amet consectetur adipisicing elit. Animi
            assumenda cum quo magnam perspiciatis.
          </li>
          <li>
            Ipsa ea dicta, eveniet nostrum, temporibus veritatis sit, quaerat
            doloribus voluptatibus modi magnam dolorem?
          </li>
          <li>
            Non ex qui iste suscipit, aliquid atque dolorum voluptates dolores et,
            numquam autem hic!
          </li>
          <li>
            Corporis, animi quis rem dicta obcaecati deleniti reprehenderit minima
            dignissimos exercitationem quisquam ullam sequi.
          </li>
          <li>
            Amet vel veniam, ad at fugiat officiis illo a earum illum enim impedit
            dolore!
          </li>
          <li>
            Rem possimus dolorem dolore nesciunt molestias, laborum deserunt soluta,
            quam nulla doloremque est. Perspiciatis!
          </li>
          <li>
            Ullam reiciendis fuga praesentium veritatis quas, dignissimos ex,
            eveniet quia, dicta excepturi ea perferendis!
          </li>
        </ol>
        <li>Tempore, quidem ad eveniet esse aliquid non?</li>
      </ol>
    </div>
  </section>
</template>

<script>
export default {
  name: 'WtRules',
}
</script>

<style lang="scss" scoped>
ol {
  margin-left: 1.5rem;
  line-height: 25px;
}

li {
  &::marker {
    color: yellow !important;
  }
}
#sub-section {
  li {
    list-style-type: lower-alpha;
  }
}
</style>