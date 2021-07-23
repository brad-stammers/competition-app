import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr(),
  location: DS.attr(),
  sport: DS.attr(),
  startDate: DS.attr('date'),
  endDate: DS.attr('date')
});
