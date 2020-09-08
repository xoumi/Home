<script>
  import { Router } from "@sveltech/routify";
  import { routes } from "../.routify/routes";
</script>

<style global lang="sass">
  @import "https://cdnjs.cloudflare.com/ajax/libs/prism/1.20.0/themes/prism-okaidia.min.css"
  @import 'reset'
  @import 'variables'
  @import 'typography'
  
  #root
    width: 100vw
    height: 100vh
    overflow: auto
    position: relative
</style>

<Router {routes} />
