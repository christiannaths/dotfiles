// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

const cloudCity = {
  black: '#000000',
  blue: '#1dafd9',
  cyan: '#00ffff',
  dark: '#031530',
  forest: 'rgba(0,150,107, 1)',
  green: '#31c89d',
  lavender: '#bb9ceb',
  light: '#ccd7de',
  lime: '#2afa92',
  medium: '#90a4ae',
  navy: '#2b3291',
  orange: '#f0652a',
  pink: '#ff3f72',
  purple: '#896ac3',
  red: '#dc3568',
  silver: '#eceff1',
  white: '#ffffff',
  yellow: '#fdbc40',
  lemon: '#fffc5a',
  highlight: 'rgba(255, 202, 40, 0.33)'
};

const config = {
  config: {
    // choose either `'stable'` for receiving highly polished,
    // or `'canary'` for less polished but more frequent updates
    updateChannel: 'stable',

    // default font size in pixels for all tabs
    fontSize: 16,

    // font family with optional fallbacks
    fontFamily: 'SauceCodePro Nerd Font Mono, monospace',

    // default font weight: 'normal' or 'bold'
    fontWeight: 'normal',

    // font weight for bold characters: 'normal' or 'bold'
    fontWeightBold: 'bold',

    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: cloudCity.purple,

    // terminal text color under BLOCK cursor
    cursorAccentColor: cloudCity.black,

    // `'BEAM'` for |, `'UNDERLINE'` for _, `'BLOCK'` for █
    cursorShape: 'BEAM',

    // set to `true` (without backticks and without quotes) for blinking cursor
    cursorBlink: false,

    // color of the text
    foregroundColor: cloudCity.dark,

    // terminal background color
    // opacity is only supported on macOS
    backgroundColor: cloudCity.white,

    // terminal selection color
    selectionColor: cloudCity.highlight,

    // border color (window, tabs)
    borderColor: cloudCity.white,

    // custom CSS to embed in the main window
    css: `
      .hyper_main {
        display: flex;
      }

      .header_header {
        overflow: visible;
        flex: 0 1 8em;
        position: initial;
      }

      .terms_terms {
        flex: 1;
        position: relative;
      }

      .tabs_nav {
        position: relative;
        top: 34px;
        background-color: ${cloudCity.white};
        height: 100%;
        border-right: 1px solid ${cloudCity.silver};
        line-height: 1.5;
      }

      .tabs_list {
        flex-direction: column;
        margin: 0;
        max-height: initial;
      }

      .tabs_title {
        padding: 0.375em 0.5em;
        text-align: right;
        color: ${cloudCity.dark};
        font-weight: bold;
      }

      .tab_tab {
        padding: 0.375em 0.5em;
        text-align: right;
        flex: none;
      }

      .tab_text {
        color: ${cloudCity.medium};
        height: initial;
        flex: none;
        display: inline;
      }

      .tab_text.tab_textActive{
        color: ${cloudCity.dark};
        font-weight: bold;
      }

      .tab_textInner {
        overflow: visible;
        text-align: right;
        position: static;
        display: inline;
      }
    `,

    // custom CSS to embed in the terminal window
    termCSS: '',

    // if you're using a Linux setup which show native menus, set to false
    // default: `true` on Linux, `true` on Windows, ignored on macOS
    showHamburgerMenu: '',

    // set to `false` (without backticks and without quotes) if you want to hide the minimize, maximize and close buttons
    // additionally, set to `'left'` if you want them on the left, like in Ubuntu
    // default: `true` (without backticks and without quotes) on Windows and Linux, ignored on macOS
    showWindowControls: '',

    // custom padding (CSS format, i.e.: `top right bottom left`)
    padding: '0 14px 12px 14px',

    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object

    colors: {
      black: cloudCity.dark,
      red: cloudCity.red,
      green: cloudCity.green,
      yellow: cloudCity.yellow,
      blue: cloudCity.blue,
      magenta: cloudCity.purple,
      cyan: cloudCity.navy,
      white: cloudCity.silver,
      lightBlack: cloudCity.medium,
      lightRed: cloudCity.pink,
      lightGreen: cloudCity.forest,
      lightYellow: cloudCity.orange,
      lightBlue: cloudCity.navy,
      lightMagenta: cloudCity.purple,
      lightCyan: cloudCity.blue,
      lightWhite: cloudCity.white
    },

    // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
    // if left empty, your system's login shell will be used by default
    //
    // Windows
    // - Make sure to use a full path if the binary name doesn't work
    // - Remove `--login` in shellArgs
    //
    // Bash on Windows
    // - Example: `C:\\Windows\\System32\\bash.exe`
    //
    // PowerShell on Windows
    // - Example: `C:\\WINDOWS\\System32\\WindowsPowerShell\\v1.0\\powershell.exe`
    shell: '',

    // for setting shell arguments (i.e. for using interactive shellArgs: `['-i']`)
    // by default `['--login']` will be used
    shellArgs: ['--login'],

    // for environment variables
    env: {},

    // set to `false` for no bell
    bell: 'SOUND',

    // if `true` (without backticks and without quotes), selected text will automatically be copied to the clipboard
    copyOnSelect: false,

    // if `true` (without backticks and without quotes), hyper will be set as the default protocol client for SSH
    defaultSSHApp: true,

    // if `true` (without backticks and without quotes), on right click selected text will be copied or pasted if no
    // selection is present (`true` by default on Windows and disables the context menu feature)
    // quickEdit: true,

    // URL to custom bell
    // bellSoundURL: 'http://example.com/bell.mp3',

    // for advanced config flags please refer to https://hyper.is/#cfg
    hypercwd: {
      initialWorkingDirectory: '~/Projects'
    }
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hyperpower`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: ['hyperterm-1password', 'hypercwd'],

  // in development, you can create a directory under
  // `~/.hyper_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: [],

  keymaps: {
    // Example
    // 'window:devtools': 'cmd+alt+o',
  }
};

module.exports = config;
