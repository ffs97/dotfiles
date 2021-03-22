@import url("https://fonts.googleapis.com/css2?family=Fira+Code:wght@300;400;500;600;700");
@import url("https://fonts.googleapis.com/css2?family=Source+Code+Pro:wght@200;300;400;600;700");
@import url("https://fonts.googleapis.com/css2?family=Inconsolata:wght@200;300;400;600;700");
body.notebook_app, body.edit_app {
  background: #251b2e;
  overflow: inherit;
  font-family: "Iosevka Medium", "Inconsolata", "Fira Code", "Source Code Pro", monospace;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  font-size: 13px;
}

#header {
  height: 0;
  overflow: hidden;
}

#kernel_indicator, #modal_indicator,
#notification_trusted, #readonly-indicator {
  padding: 0 15px;
  margin: 10px 0 10px 15px;
}

#kernel_indicator:empty, #modal_indicator:empty,
#notification_trusted:empty, #readonly-indicator:empty {
  padding: 0;
  width: 0;
  margin: 0;
}

#notification_trusted {
  margin: 9px 0;
  display: none !important;
}

#notification_area {
  position: fixed;
  bottom: 5px;
  right: 5px;
}
#notification_area #notification_kernel {
  padding: 10px 20px;
}
#notification_area #notification_notebook {
  padding: 10px 20px;
  background-color: #b3c6fff0;
  color: #fefefe;
}

#notebook-container {
  background: #251b2e;
  box-shadow: none;
  -webkit-box-shadow: none;
  padding: 15px;
  width: 100%;
}

#site::-webkit-scrollbar {
  display: none;
}

#texteditor-backdrop {
  background: #251b2e;
}
#texteditor-backdrop #texteditor-container {
  background: #251b2e;
  box-shadow: none;
  margin: 0 20px;
}
#texteditor-backdrop #texteditor-container .CodeMirror-vscrollbar, #texteditor-backdrop #texteditor-container .CodeMirror-hscrollbar {
  display: none !important;
}

.completions {
  box-shadow: none;
  border: none;
  border-radius: 0;
}
.completions select {
  font-family: "Iosevka Medium", "Inconsolata", "Fira Code", "Source Code Pro", monospace;
  font-size: 13px;
  color: #fefefe;
  border-radius: 0;
  background-color: #7372c3;
}

div.cell, .edit_mode div.cell {
  padding: 15px 10px 15px 0;
  margin: -1px 0 0 0;
  width: 100%;
  border: none;
  border-radius: 0;
}
div.cell.code_cell, div.cell.code_cell.selected, .edit_mode div.cell.code_cell, .edit_mode div.cell.code_cell.selected {
  border-top: 1px solid #434356aa !important;
}
div.cell.jupyter-soft-selected, .edit_mode div.cell.jupyter-soft-selected {
  padding-left: 0;
  background: #434356;
}
div.cell.jupyter-soft-selected:before, div.cell.jupyter-soft-selected:after, .edit_mode div.cell.jupyter-soft-selected:before, .edit_mode div.cell.jupyter-soft-selected:after {
  display: none;
}
div.cell.selected, div.cell.selected.jupyter-soft-selected, .edit_mode div.cell.selected, .edit_mode div.cell.selected.jupyter-soft-selected {
  padding-left: 0;
  box-shadow: 0 0 10px;
  border: none;
}
div.cell.selected:before, div.cell.selected.jupyter-soft-selected:before, .edit_mode div.cell.selected:before, .edit_mode div.cell.selected.jupyter-soft-selected:before {
  height: 5px;
  width: 100%;
  left: 0;
  top: 0;
  display: block;
  background: #7372c3;
}
div.cell.selected:after, div.cell.selected.jupyter-soft-selected:after, .edit_mode div.cell.selected:after, .edit_mode div.cell.selected.jupyter-soft-selected:after {
  height: 3px;
  width: 100%;
  left: 0;
  bottom: 0;
  display: block;
  background: #7372c3;
  content: "";
  position: absolute;
}

.edit_mode div.cell.selected:before, .edit_mode div.cell.selected:after, .edit_mode div.cell.jupyter-soft-selected:before, .edit_mode div.cell.jupyter-soft-selected:after, .edit_mode div.cell.selected.jupyter-soft-selected:before, .edit_mode div.cell.selected.jupyter-soft-selected:after {
  background: #72c373;
}

div.prompt {
  font-family: "Fira Code";
  font-size: 12px;
  width: 50px;
  min-width: unset;
}
div.prompt.input_prompt {
  color: #5baabb;
  font-weight: 500;
}
div.prompt.output_prompt {
  color: transparent;
}
div.prompt bdi {
  display: none;
}
div.prompt.out_prompt_overlay {
  width: 50px;
  height: 100%;
  top: 0px;
  left: 0px;
  border: none;
  border-radius: 0;
}
div.prompt.out_prompt_overlay:hover {
  background: #ffffff22;
}

div.input_area {
  border: none;
  border-radius: 0;
  background: #251b2e;
}
div.input_area * {
  font-family: "Iosevka Medium", "Inconsolata", "Fira Code", "Source Code Pro", monospace;
  font-size: 14px;
}

div.output_collapsed {
  margin-left: 75px;
  border: 1px solid #dbdbdb44;
  border-radius: 0;
  background: #251b2e88;
  color: #dbdbdb;
  padding-bottom: 6px;
  line-height: 20px;
}
div.output_collapsed:hover, div.output_collapsed:active, div.output_collapsed:focus {
  background: #251b2e44;
  color: #fefefe;
}

div.output_subarea {
  font-size: 13px;
  padding: 15px 10px 15px 0;
  max-width: none;
  color: #fefefe;
}
div.output_subarea * {
  font-family: "Iosevka Medium", "Inconsolata", "Fira Code", "Source Code Pro", monospace;
  font-size: 13px;
}
div.output_subarea code, div.output_subarea kbd, div.output_subarea pre, div.output_subarea samp {
  color: #fefefe;
}
div.output_subarea.output_png {
  text-align: center;
  background: white;
  opacity: 0.9;
  margin: 15px 0;
}
div.output_subarea.output_stderr {
  background: #ff6a6a;
  opacity: 0.75;
  padding-left: 10px;
  margin-right: 0;
}
div.output_subarea.output_stderr code, div.output_subarea.output_stderr kbd, div.output_subarea.output_stderr pre, div.output_subarea.output_stderr samp {
  color: #251b2e;
}
div.output_subarea.output_error {
  font-weight: 500;
}

div.output_subarea {
  overflow: auto;
  margin-right: 20px;
}
div.output_subarea::-webkit-scrollbar {
  width: 5px;
  height: 5px;
}
div.output_subarea::-webkit-scrollbar-track {
  background: #dbdbdb;
}
div.output_subarea::-webkit-scrollbar-thumb {
  background: #5baabb;
}
div.output_subarea::-webkit-scrollbar-thumb:hover {
  background: #c778c8;
}

div.output_scroll {
  box-shadow: inset 0 1px 6px #251b2e;
}
div.output_scroll::-webkit-scrollbar {
  width: 0;
}

.collapsible_headings_toggle .h1, .collapsible_headings_toggle .h2, .collapsible_headings_toggle .h3, .collapsible_headings_toggle .h4, .collapsible_headings_toggle .h5, .collapsible_headings_toggle .h6 {
  display: none;
}

div.CodeMirror {
  background: transparent;
  color: #fefefe;
}
div.CodeMirror .CodeMirror-gutters {
  background: transparent !important;
  border-radius: 0;
  border-right: 1px solid #dbdbdb00;
}
div.CodeMirror .CodeMirror-gutters .CodeMirror-gutter {
  background: transparent !important;
}
div.CodeMirror .CodeMirror-linenumber {
  color: #dbdbdb77;
  font-size: 12px;
}
div.CodeMirror .CodeMirror-cursor {
  border-left: 1px solid #aec7c6;
}
div.CodeMirror span.CodeMirror-matchingbracket {
  text-decoration: underline;
  font-weight: 700;
  color: #aadbaa;
}

.CodeMirror-selected,
.CodeMirror-focused .CodeMirror-selected,
.CodeMirror-line::selection,
.CodeMirror-line > span::selection,
.CodeMirror-line > span > span::selection {
  background: #434356;
}

.ansi-black-fg {
  color: #251b2e;
}

.ansi-red-fg {
  color: #ff4971;
}

.ansi-green-fg {
  color: #72c373;
}

.ansi-yellow-fg {
  color: #f5f8d6;
}

.ansi-blue-fg {
  color: #7372c3;
}

.ansi-magenta-fg {
  color: #c778c8;
}

.ansi-cyan-fg {
  color: #5baabb;
}

.ansi-gray-fg {
  color: #dbdbdb;
}

.ansi-white-fg {
  color: #fefefe;
}

.ansi-black-intense-fg {
  color: #434356;
}

.ansi-red-intense-fg {
  color: #ff6a6a;
}

.ansi-green-intense-fg {
  color: #aadbaa;
}

.ansi-yellow-intense-fg {
  color: #ffffb3;
}

.ansi-blue-intense-fg {
  color: #b3c6ff;
}

.ansi-magenta-intense-fg {
  color: #ff79c6;
}

.ansi-cyan-intense-fg {
  color: #3bf2ea;
}

.ansi-white-intense-fg {
  color: #fefefe;
}

.ansi-black-bg {
  background: #251b2e;
}

.ansi-red-bg {
  background: #ff4971;
}

.ansi-green-bg {
  background: #72c373;
}

.ansi-yellow-bg {
  background: #f5f8d6;
}

.ansi-blue-bg {
  background: #7372c3;
}

.ansi-magenta-bg {
  background: #c778c8;
}

.ansi-cyan-bg {
  background: #5baabb;
}

.ansi-gray-bg {
  background: #dbdbdb;
}

.ansi-white-bg {
  background: #fefefe;
}

.ansi-black-intense-bg {
  background: #434356;
}

.ansi-red-intense-bg {
  background: #ff6a6a;
}

.ansi-green-intense-bg {
  background: #aadbaa;
}

.ansi-yellow-intense-bg {
  background: #ffffb3;
}

.ansi-blue-intense-bg {
  background: #b3c6ff;
}

.ansi-magenta-intense-bg {
  background: #ff79c6;
}

.ansi-cyan-intense-bg {
  background: #3bf2ea;
}

.ansi-white-intense-bg {
  background: #fefefe;
}

.CodeMirror-line span {
  color: #fefefe;
}
.CodeMirror-line span.cm-keyword {
  color: #b3c6ff;
  font-weight: 400;
}
.CodeMirror-line span.cm-atom {
  color: #251b2e;
}
.CodeMirror-line span.cm-number {
  color: #aadbaa;
}
.CodeMirror-line span.cm-def {
  color: #ff4971;
  font-weight: 700;
}
.CodeMirror-line span.cm-variable {
  color: #fefefe;
}
.CodeMirror-line span.cm-variable-2 {
  color: #3bf2ea;
}
.CodeMirror-line span.cm-punctuation {
  color: #fefefe;
}
.CodeMirror-line span.cm-property {
  color: #fefefe;
}
.CodeMirror-line span.cm-operator {
  color: #fefefe;
}
.CodeMirror-line span.cm-comment {
  color: #5baabb;
}
.CodeMirror-line span.cm-string {
  color: #f5f8d6;
}
.CodeMirror-line span.cm-meta {
  color: #251b2e;
}
.CodeMirror-line span.cm-qualifier {
  color: #251b2e;
}
.CodeMirror-line span.cm-builtin {
  color: #ff4971;
}
.CodeMirror-line span.cm-bracket {
  color: #fefefe;
}
.CodeMirror-line span.cm-tag {
  color: #251b2e;
}
.CodeMirror-line span.cm-attribute {
  color: #251b2e;
}
.CodeMirror-line span.cm-quote {
  color: #251b2e;
}
.CodeMirror-line span.cm-link {
  color: #ff6a6a;
}
.CodeMirror-line span.cm-error {
  color: #ff4971;
}
.CodeMirror-line span.cm-header {
  color: #5baabb;
}
.CodeMirror-line span.cm-header-1 {
  font-size: 26px;
}
.CodeMirror-line span.cm-header-2 {
  font-size: 22px;
}
.CodeMirror-line span.cm-header-3 {
  font-size: 19px;
}
.CodeMirror-line span.cm-header-4, .CodeMirror-line span.cm-header-5, .CodeMirror-line span.cm-header-6 {
  font-size: 18px;
}
.CodeMirror-line span.cm-tab {
  background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAMCAYAAAAkuj5RAAAAAXNSR0IArs4c6QAAAGFJREFUSMft1LsRQFAQheHPowAKoACx3IgEKtaEHujDjORSgWTH/ZOdnZOcM/sgk/kFFWY0qV8foQwS4MKBCS3qR6ixBJvElOobYAtivseIE120FaowJPN75GMu8j/LfMwNjh4HUpwg4LUAAAAASUVORK5CYII=);
  background-position: right;
  background-repeat: no-repeat;
}

.rendered_html h1 {
  font-weight: 700;
  font-size: 26px;
  text-align: center;
  padding: 15px 0;
  color: #aadbaa;
}
.rendered_html h2 {
  font-weight: 700;
  font-size: 22px;
}
.rendered_html h3 {
  font-weight: 700;
  font-size: 19px;
}
.rendered_html h4, .rendered_html h5, .rendered_html h6 {
  text-decoration: underline;
  font-style: normal;
  font-size: 18px;
  font-weight: 400;
}
.rendered_html h5 {
  font-size: 16px;
}
.rendered_html h6 {
  font-size: 14px;
}

div.output_area .rendered_html table {
  border-collapse: collapse;
  border: 1px solid #dbdbdb77;
  margin: 0 auto;
}
div.output_area .rendered_html table thead {
  padding-bottom: 10px;
}
div.output_area .rendered_html table thead tr {
  padding: 5px 10px;
}
div.output_area .rendered_html table thead tr th, div.output_area .rendered_html table thead tr:only-child th {
  vertical-align: middle;
  text-align: center;
  color: #ff4971;
  border-bottom: 1px solid #dbdbdb77;
}
div.output_area .rendered_html table tbody {
  padding-top: 5px;
}
div.output_area .rendered_html table tbody tr:nth-child(odd), div.output_area .rendered_html table tbody tr:nth-child(even) {
  background: transparent;
}
div.output_area .rendered_html table tbody tr th {
  background: transparent;
  font-style: italic;
  text-align: right;
  color: #dbdbdb;
  border-top: 0;
}
div.output_area .rendered_html table tbody tr td {
  background: #434356aa;
  color: #dbdbdb;
  padding-left: 1rem;
  padding-right: 1rem;
  border-top: 1px solid #dbdbdb33;
}

div.text_cell_render {
  color: #dbdbdb;
}
div.text_cell_render h1:after, div.text_cell_render h2:after, div.text_cell_render h3:after, div.text_cell_render h4:after, div.text_cell_render h5:after, div.text_cell_render h6:after {
  color: #dbdbdb !important;
}

a {
  color: #5baabb;
}

/*# sourceMappingURL=custom.css.map */
