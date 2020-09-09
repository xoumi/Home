<!-- routify:options title='Dev'-->
<!-- routify:options subtitle='Loggin\' n bloggin\''-->
<!-- routify:options id='dev'-->
<!-- routify:options index='0'-->
<template lang="pug">
main.dev(class:index='{isIndex}')
  Lines(trigger="{isIndex}")
  slot 
</template>

<script lang="coffee">
import { page } from '@sveltech/routify'
import Lines from '../../components/dividerLinesContainer.svelte'

`$: isIndex = $page.__file.isIndex`
</script>

<style lang="sass">
  main
    position: relative
    height: 100%
    overflow: visible
    max-width: var(--post-maxWidth)
    margin: auto
    color: var(--i)
  .index
    max-width: var(--allPosts-maxWidth)

</style>
