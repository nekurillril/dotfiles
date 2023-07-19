static const char norm_fg[] = "#e4ecf1";
static const char norm_bg[] = "#091019";
static const char norm_border[] = "#9fa5a8";

static const char sel_fg[] = "#e4ecf1";
static const char sel_bg[] = "#609FAB";
static const char sel_border[] = "#e4ecf1";

static const char urg_fg[] = "#e4ecf1";
static const char urg_bg[] = "#4C7694";
static const char urg_border[] = "#4C7694";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
