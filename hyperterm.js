module.exports = {
  config: {
    // default font size in pixels for all tabs
    fontSize: 13,

    // font family with optional fallbacks
    fontFamily: 'Menlo, "DejaVu Sans Mono", "Lucida Console", monospace',

    // terminal cursor background color (hex)
    cursorColor: '#F4D300',

    // color of the text
    foregroundColor: '#fff',

    // terminal background color
    backgroundColor: 'rgba(25,53,73,.6)',

    // border color (window, tabs)
    borderColor: '#193549',

    // custom css to embed in the main window
    css: `
      .tab_active {
        border-bottom: 2px solid #F4D300 !important;
      }
    `,

    // custom css to embed in the terminal window
    termCSS: `
      x-screen a {
        color: #1478DB;
        text-decoration: underline;
      }

      x-screen a.hover {
        text-decoration: none;
      }
    `,

    // custom padding (css format, i.e.: `top right bottom left`)
    padding: '5px',

    // some color overrides. see http://bit.ly/29k1iU2 for
    // the full list
    colors: [
      '#000000',
      '#FF2600',
      '#3DDF2B',
      '#FFE700',
      '#1478DB',
      '#FF2C70',
      '#00C5C7',
      '#d0d0d0',
      '#808080',
      '#FF2600',
      '#3DDF2B',
      '#FFE700',
      '#1478DB',
      '#FF2C70',
      '#00C5C7',
      '#FFFFFF'
    ]
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hyperpower`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: [
    "hyperlinks",
    // "hyperterm-clicky",
    "hyperterm-paste"
  ],

  // in development, you can create a directory under
  // `~/.hyperterm_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed

  // create a file vibrancy.js with following contents:
  // module.exports.onWindow = browserWindow => browserWindow.setVibranch('dark');
  localPlugins: [
    'vibrancy',
  ]
};
