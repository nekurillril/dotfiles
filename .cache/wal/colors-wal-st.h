const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#091019", /* black   */
  [1] = "#4C7694", /* red     */
  [2] = "#609FAB", /* green   */
  [3] = "#5498C0", /* yellow  */
  [4] = "#AFB7AD", /* blue    */
  [5] = "#E3CAA9", /* magenta */
  [6] = "#EED6B4", /* cyan    */
  [7] = "#e4ecf1", /* white   */

  /* 8 bright colors */
  [8]  = "#9fa5a8",  /* black   */
  [9]  = "#4C7694",  /* red     */
  [10] = "#609FAB", /* green   */
  [11] = "#5498C0", /* yellow  */
  [12] = "#AFB7AD", /* blue    */
  [13] = "#E3CAA9", /* magenta */
  [14] = "#EED6B4", /* cyan    */
  [15] = "#e4ecf1", /* white   */

  /* special colors */
  [256] = "#091019", /* background */
  [257] = "#e4ecf1", /* foreground */
  [258] = "#e4ecf1",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
