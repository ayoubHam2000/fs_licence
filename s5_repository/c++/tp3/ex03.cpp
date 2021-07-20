
/*

Dans ce cas, les instructions 1 et 2 auraient conduit à une situation d’ambiguïté. En effet, le
compilateur aurait disposé de deux chaînes de conversions permettant de convertir un point en
double : soit point --> double, soit point --> int suivie de int -> double. En revanche,
les instructions 3 et 4 auraient toujours été acceptées.

*/