module.exports = {
  config: {
    // default font size in pixels for all tabs
    fontSize: 14,

    // font family with optional fallbacks
    fontFamily:
      '"Fira Code Light", "Fira Code", Menlo, "DejaVu Sans Mono", "Lucida Console", monospace',

    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: "rgba(248,28,229,0.8)",

    // `BEAM` for |, `UNDERLINE` for _, `BLOCK` for █
    cursorShape: "BEAM",
    cursorBlink: true,
    modifierKeys: { altIsMeta: true },
    // color of the text
    foregroundColor: "#f92672",

    // terminal background color
    backgroundColor: "#000",

    // border color (window, tabs)
    borderColor: "#333",

    // custom css to embed in the main window
    css: `
      .terms_19b1ydh {margin-top: 20px;}
      .header_windowHeader {
        display: none;
      }
      .tabs_nav {
        top: 0;
      }
      .terms_terms {
        margin-top: 20px;
      }
      .terms_termsShifted {
        margin-top: 30px;
      }
    `,

    // custom css to embed in the terminal window
    termCSS: "",

    // set to `true` if you're using a Linux set up
    // that doesn't shows native menus
    // default: `false` on Linux, `true` on Windows (ignored on macOS)
    showHamburgerMenu: "",

    // set to `false` if you want to hide the minimize, maximize and close buttons
    // additionally, set to `'left'` if you want them on the left, like in Ubuntu
    // default: `true` on windows and Linux (ignored on macOS)
    showWindowControls: "",

    // custom padding (css format, i.e.: `top right bottom left`)
    padding: "12px 14px",

    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    colors: {
      black: "#000000",
      red: "#f71735",
      green: "#0fff95",
      yellow: "#fffc56",
      blue: "#01cdfe",
      magenta: "#000000",
      cyan: "#01cdfe",
      white: "#dbded8",
      lightBlack: "#808080",
      lightRed: "#ff0000",
      lightGreen: "#33ff00",
      lightYellow: "#ffff00",
      lightBlue: "#0066ff",
      lightMagenta: "#cc00ff",
      lightCyan: "#00ffff",
      lightWhite: "#ffffff"
    },

    // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
    // if left empty, your system's login shell will be used by default
    shell: "/usr/local/bin/fish",
    // shell: '/usr/local/bin/zsh',
    // for setting shell arguments (i.e. for using interactive shellArgs: ['-i'])
    // by default ['--login'] will be used
    shellArgs: ["--login"],

    // for environment variables
    env: {},

    // set to false for no bell
    bell: "SOUND",

    // if true, selected text will automatically be copied to the clipboard
    copyOnSelect: false

    // URL to custom bell
    // bellSoundURL: 'http://example.com/bell.mp3',

    // for advanced config flags please refer to https://hyper.is/#cfg
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hyperpower`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: [
    "hyper-statusline",
    "hyper-dark-scrollbar",
    "hypercwd",
    "hyper-confirm",
    "hyper-blink"
  ],

  // in development, you can create a directory under
  // `~/.hyper_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: []
};
