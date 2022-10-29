# Pixelgun

## **About**

Pixelgun's main goal is not just to be a game, but also to be a game with a small footprint (in terms of memory and executable size). This game is a platformer, with a gun to shoot enemies.

## **Goals**

- Executable size lower than 80kb
- Fully functional (and fun) game
- Memory footprint less than 50 MB
- It must be statically compiled

## **How does it do it?**

### - Executable size lower than 80kb

To accomplish this goal, Pixelgun's logic and most of its rendering is written in 100% C. It uses a compiler called _tcc_ which produces the small binary. Each "unit" in the game is a tile (similar to Super Mario Bros Original) instead of a pixel. This saves space as the tiles drawn do not have to contain many pixels. It also uses X11 and its own OpenGL renderer to minimize dependency use.

### - Fully functional (and fun) game

To accomplish this, it uses a very fun platformer-style game with combat mechanics added to it.

### - Memory footprint less than 50 MB

This was a tough one. In order to make this happen, all of the art needed to be small enough to load into the game without causing too much memory to be used. The window size is also very small for further memory reduction. Finally, it minimizes the abstractions for rendering.

### - It must be statically compiled

This is so that all of the images, code, and the compiler are linked into one exectable.
