<template lang="pug">
.scroll-wrapper(data-simplebar)
  article
    slot
</template>

<script lang="coffee">
  import 'simplebar'
</script>

<style>
.scroll-wrapper { height: 100% }
</style>
