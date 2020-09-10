<template lang="pug">
.scroll-wrapper(data-simplebar)
  article
    .heading
      h1.title {title}
      span.date.small {date}
    slot
</template>

<script lang="coffee">
  import 'simplebar'
  export title = ''
  export date = ''
</script>

<style>
.scroll-wrapper { height: 100% }
.title { margin-bottom: 12px; }
.heading { margin-bottom: 24px; text-align: center }
.date { display: block; }
</style>
