function() {
  var content = getEementsByClassName('body');
  for (i=o, element in content) {
    document.write("<a href= \'" + element + "\'>" + element + "</a>"), i++;
  };
}
