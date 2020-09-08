import { gsap, Power3 } from 'gsap'

export default (node, params) ->
  oldRect = node.getBoundingClientRect()

  update: (change) ->
    window.requestAnimationFrame () ->
      newRect = node.getBoundingClientRect()
      gsap.from node,
        x: oldRect.x - newRect.x,
        y: oldRect.y - newRect.y,
        scaleY: oldRect.height / newRect.height,
        scaleX: oldRect.width / newRect.width,
        duration: params.duration || 1,
        transformOrigin: params.origin || 'top left',
        ease: "power3.inOut",
        onComplete: () ->
          gsap.set [node], { clearProps: 'all' }
          oldRect = node.getBoundingClientRect()