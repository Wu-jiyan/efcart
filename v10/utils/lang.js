(function () {
  const defaultLang = localStorage.getItem('lang') || 'zh-cn'
  localStorage.lang = defaultLang
  document.writeln(`<script src="${baseUrl}/v10/lang/${localStorage.lang}.js"><\/script>`)
}())
