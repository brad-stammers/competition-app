import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr(),
  sport: DS.attr(),
  location: DS.attr(),
  start: DS.attr('date'),
  finish: DS.attr('date')
});
