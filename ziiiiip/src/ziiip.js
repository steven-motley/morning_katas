function zipObject(keys, values) {
  var myHash = {};
  var i = 0;
  if (!keys && !values) {
    return {};
  } else {
    while (i < keys.length) {
      if (Array.isArray(keys[0])) {
        myHash[keys[i][0]] = keys[i][1];
      } else if (keys && values) {
        myHash[keys[i]] = values[i];
      } else if (keys && values === undefined) {
        myHash[keys[i]] = undefined;
      }
      i++;
    }
    return myHash;
  }
}

