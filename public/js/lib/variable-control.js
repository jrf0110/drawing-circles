var createView = require('../views/variable-control');
var cid  = 0;

module.exports.init = function( options ){
  var defaults = {
    context: window
  };

  options = options || {};

  for ( var key in defaults ){
    if ( key in options ) continue;
    options[ key ] = defaults[ key ];
  }

  document.addEventListener( 'DOMContentLoaded', function(){
    var controls = document.querySelectorAll('[data-variable-control]');
    controls = Array.prototype.slice.call( controls );

    controls.forEach( function( el ){
      var view = module.exports.views[ el.id || cid ] = createView(
        el, options.context, el.dataset.variableControl
      );

      view.setValue( options.context[ el.dataset.variableControl ] );

      cid++;
    });
  });
};

module.exports.views = {};