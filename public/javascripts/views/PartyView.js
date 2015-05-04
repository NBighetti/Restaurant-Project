var app = app || {};

app.PartyView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model,'change', this.render);
    this.listenTo(this.model,'delete', this.remove);
  },
  template: _.template('<h3>Table Number: <%= table_number %>   <button class="select-party">Select</button>  <button class="receipt"> Receipt </button>'),
  tagName: 'li',
  className: 'party',
  render: function(){
    this.$el.append( this.template( this.model.attributes ) );
    this.renderFoodList();
    return this;
  },
  renderFoodList: function(){
    var foods = this.model.get('foods')
    var foodList = $('<ul>');
    for (var i = 0; i < foods.length; i++) {
      foodList.append( $('<li>').text( foods[i]['name'] ) );
    }
    this.$el.append(foodList);
  },
  events:{
    'click .select-party': 'selectParty',
    'click .receipt': 'printReceipt'
  },
  selectParty: function(){
    $('.party-selected').removeClass('party-selected');
    this.$el.addClass('party-selected');
    app.partySelection = this.model;
  },
  printReceipt: function() {
   var divToPrint = this.$el;
   var popupWin = window.open('', '_blank', 'width=300,height=300');
   popupWin.document.open();
   popupWin.document.write('<html><body onload="window.print()">' + divToPrint.html() + '</html>');
    popupWin.document.close();
}

});
