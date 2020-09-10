<script>
  import { BaseTransition } from '@sveltech/routify/decorators'
  import { fade } from 'svelte/transition'

  const configs = [
    {
        condition: (meta)=>true,
        transition: fade,
        inParams: {delay: 600, duration: 300}, 
        outParams: {duration: 300}
    }
  ]
</script>

<BaseTransition {configs}>
  <slot />
</BaseTransition>