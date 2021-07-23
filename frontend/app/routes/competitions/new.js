import Route from '@ember/routing/route';

export default Route.extend({
  model() {
    return {};
  },

  actions: {
    saveComp(newComp) {
      this.store.createRecord('competition', {
        name: newComp.name,
        location: newComp.location,
        sport: newComp.sport,
        start: newComp.start,
        finish: newComp.finish
      }).save();
      this.transitionTo('competitions');
    }
  }
});
