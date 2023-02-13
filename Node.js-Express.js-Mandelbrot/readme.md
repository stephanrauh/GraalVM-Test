# Node.js-Mandelbrot

- streams the data as soon as new divergent points are found
- scales to 4 cores on the server as cluster
- colored and it will build up on your screen

## installation

      npm start
      #then open Firefox or Chromium and visit localhost:4200

<sup>_The rendering is smoother in chromium than in firefox._</sup>

<sup>_No need to 'npm install', as it only depends on fs, cluster and http._</sup>

<sup>_If it doesn't render with a specific configuration, please take a look at the console. It might be that you zoomed in so deep, so that the datatypes can't handle the precision anymore, or that the server only sees points that don't diverge in the current window._</sup>

<sup>_It can be run without a cluster single-threaded by using 'node server.js'._</sup>

![Screenshot](https://github.com/sezanzeb/Node.js-Mandelbrot/raw/master/mandelbrot.png)
