export function initializeMB(state, mb_answer, size) {
    let width = Math.abs(mb_answer.maxx - mb_answer.minx);
    let height = Math.abs(mb_answer.maxi - mb_answer.mini);
    let stepi = height / size;
    let stepx = width / size;
  
    // check if this loop will ever come to an end. An issue that might be the case for very large zoom factors
    if (1 - stepx === 1) return -1;
  
    state.allPointsC = new Array(size * size);
    state.allPointsZ = new Array(size * size);
    state.allPointsPx = new Array(size * size);
  
    // each item inside answer.points will get a unique identifier
    let pointNr = 0;
  
    // iterate over each point in the visible coordinate system
    let ci = mb_answer.maxi;
    let cx = 0;
    while (ci >= mb_answer.mini) {
      cx = mb_answer.maxx;
      while (cx >= mb_answer.minx) {
        // it will leave out 2 circles that are known to remain black
        if ((cx + 0.35) * (cx + 0.35) + ci * ci > 0.14)
          if ((cx + 1) * (cx + 1) + ci * ci > 0.04) {
            // if((cx*cx)+(ci*ci) <= 4)
            // add every point (except those inside the two circles) to state.allPoints
            state.allPointsC[pointNr] = [
              cx, // will remain the same all the time
              ci, // except that point diverges. then undefined will be assigned to it
            ];
            state.allPointsZ[pointNr] = [
              cx, // this is not redundant. it's zx and zi actually
              ci, // this array tuple is going to be overwritten with iteration results
            ];
          }
  
        // the array index
        pointNr += 1;
  
        // go to next pixel
        cx -= stepx;
      }
      // go to next line
      ci -= stepi;
    }
    return 1;
  }
  
  export function iterateEverythingOnce(state, mb_answer, size) {
    // index inside the array that is being sent to the client
    let divergedPointsCount = 0;
  
    // go through all points, they are initialized in initializeMB()
    for (let pointNr = 0; pointNr < state.allPointsC.length; pointNr++) {
      // only points that did not diverge
      const currentPointC = state.allPointsC[pointNr];
      if (currentPointC !== undefined) {
        const currentPointZ = state.allPointsZ[pointNr];
        // do a mandelbrot iteration
        let zx = currentPointZ[0];
        let zi = currentPointZ[1];
        const dist = Math.abs(Math.pow(zx, 2) + Math.pow(zi, 2));
  
        // check if this point diverges or not
        if (dist < 4) {
          // does not converge / pythagoras squared (no sqrt)
          // then do an iteration. next time the server will check wether or not this diverges (dist larger than two)
          // allPointsC holds the points from the last requestMB call
          const zj = zi; // store old zi value in zj, because...
          zi = 2 * zx * zi + currentPointC[1]; // ...zi is going to be overwritten now...
          zx = zx * zx - zj * zj + currentPointC[0]; // ...but needs to be here for one more calculation
  
          // state.allPointsZ holds the information for the server needed to calculate the fractal
          currentPointZ[0] = zx;
          currentPointZ[1] = zi;
        } // converges
        else {
          // put this point into mb_answer.points
          // the sever will send only those points that just diverged in the most recent iteration
          state.allPointsPx[divergedPointsCount] = [
            (((currentPointC[0] - mb_answer.minx) * size) / mb_answer.width).toFixed(0),
            (((currentPointC[1] - mb_answer.mini) * size) / mb_answer.height).toFixed(0),
          ];
  
          divergedPointsCount++;
  
          // mark this point as "diverged". The loop will leave out points that are known to diverge
          state.allPointsC[pointNr] = undefined;
        }
      }
    }
  
    // take slice from state.allPointsC and store it inside mb_answer
    mb_answer.points = state.allPointsPx.slice(0, divergedPointsCount);
    mb_answer.length = divergedPointsCount;
  }
  