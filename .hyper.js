module.exports = {
  config: {

    updateChannel: 'stable',
    fontSize: 14,
    fontFamily: '"Consolas", "Range Mono"',
    cursorColor: '#fff',
    cursorShape: 'BLOCK',
    cursorBlink: false,
    foregroundColor: '#fff',
    backgroundColor: '#1e1e1e',
    selectionColor: 'rgba(255, 255, 255, 0.2)',
    borderColor: '#1e1e1e',
    css: 'span.tab_process.process_shell { font-family: "SF Mono"; }',
    termCSS: '',
    showHamburgerMenu: '',
    showWindowControls: '',
    padding: '12px 30px 30px 30px',
    colors: {

      black: '#000',
      white: '#fff',

      red: '#f0c098',
      green: '#4e709d',
      yellow: '#f0c098',
      blue: '#ccc',
      magenta: '#ccc',
      cyan: '#4e709d',

      lightBlack: '#777',
      lightWhite: '#900fff',

      lightRed: '#f0c098',
      lightGreen: '#4e709d',
      lightYellow: '#ccc',
      lightBlue: '#f0c098',
      lightMagenta: '#ccc',
      lightCyan: '#50e3c2'
    },

    shell: '',
    shellArgs: ['--login'],
    env: {},
    bell: false,
    copyOnSelect: false,

    summon: {
      hideDock: false,
      hideOnBlur: false,
      hotkey: 'Cmd+Enter'
    },

    hyperTabs: {
      tabIcons: false,
      activityColor: 'salmon',
    },

    paneNavigation: {
      showIndicators: false,
      hotkeys: {
        navigation: {
          up: 'cmd+up',
          down: 'cmd+down',
          right: 'cmd+right',
          left: 'cmd+left'
        }
      }
    },

    workingDirectory: "~/dev/"
  },

  plugins: ["hyper-tabs-enhanced", "hyperterm-working-directory", "hyper-pane"],

  localPlugins: [],

  keymaps: {}
};
