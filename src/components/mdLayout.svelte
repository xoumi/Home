<template lang="pug">
// routify:options bundle=false
.scroll-wrapper(data-simplebar)
  article
    .heading
      h1.title {title}
      span.date.small {date}
    slot
    hr
</template>

<script>
  import { onMount } from 'svelte'

  export let title = ''
  export let date = ''
  export const summary = ''
</script>

<style global>
.scroll-wrapper { height: 100% }
.heading { margin-bottom: 24px; text-align: center }
.heading .title { margin-bottom: 12px; }
article .date { display: block; }
</style>
