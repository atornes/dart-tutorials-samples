import "dart:html" as k;import "dart:json" as o;class q{static const  s="Chrome";static const  t="Firefox";static const  u="Internet Explorer";static const  v="Safari";final  n;final  minimumVersion;const q(this.n,[this.minimumVersion]);}class w{const w();}class AB{final  name;const AB(this.name);}class BB{const BB();}class CB{const CB();}var j; main(){k.query('#getWords').onClick.listen(l);j=k.query('#wordList');} l( h){var i='portmanteaux.json';var g=new k.HttpRequest();g..open('GET',i)..onLoadEnd.listen((h)=>m(g))..send('');}m( g){if(g.status==200){var i=o.parse(g.responseText);for(int h=0;h<i.length;h++ ){j.children.add(new k.LIElement()..text=i[h]);}}else{j.children.add(new k.LIElement()..text='Request failed, status={${g}.status}');}}//@ sourceMappingURL=portmanteaux.dart.map
