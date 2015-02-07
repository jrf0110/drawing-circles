module.exports = function( el, context, variable ){
  return Object.create({
    $control:   el.querySelector('.control')
  , $value:     el.querySelector('.value')

  , init: function(){
      this.$control.addEventListener('input', function( e ){
        this.setValue( +e.target.value );
      }.bind( this ));

      return this;
    }

  , setValue: function( value ){
      this.value = context[ variable ] = value;
      this.render();
      return this;
    }

  , render: function(){
      this.$value.innerText = this.value;

      if ( this.$control.value != this.value ){
        this.$control.value = this.value;
      }
      return this;
    }
  }).init();
};