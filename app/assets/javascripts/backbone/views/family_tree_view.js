console.log('family_tree_view loaded');

var FamilyTreeView = Backbone.View.extend({
	tagName: 'li',
	className: 'family-tree',
	initialize: function(){
		this.render();
	},
	render: function(){
		this.$el.html();
	}
})