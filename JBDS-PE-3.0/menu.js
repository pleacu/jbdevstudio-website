  // Based on http://blog.richnetapps.com/index.php/automatically_highlight_current_page_in
  // Modifications:
  //   - Matching full URL
  //   - Arbitrary menu id
  //   - class-modify parentNode only

  function setActiveMenu(arr, currentURL) {
    for (var i=0; i<arr.length; i++) {
      if (currentURL.indexOf(arr[i].href)!=-1) {     
        if (arr[i].parentNode.tagName != "DIV") {
          arr[i].parentNode.className = "current";
        }
      }
    }
  }
  
  function setPage(menuid) {
    if (typeof(menuid) == 'undefined') menuid = 'primarynav';

    hrefString = document.location.href ? document.location.href : document.location;
  
    if (document.getElementById(menuid)!=null)
      setActiveMenu(document.getElementById(menuid).getElementsByTagName("a"), hrefString);
  }
