$(document).on('ready page:load', function() {
  Vue.http.headers.common['X-CSRF-TOKEN'] = $('input[name=authenticity_token]').attr('value');

  var vm = new Vue({
    el: '#form',
    data: {
      firstName: { value: null, name: 'first_name' },
      lastName: { value: null, name: 'last_name' },
      birthDate: { value: null, name: 'birth_date' },
      postalCode: { value: null, name: 'postal_code' },
      city: { value: null, name: 'city' },
      thoroughfare: { value: null, name: 'thoroughfare' },
      error: {
        updateContent: null
      },
      person: null
    },
    ready: function() {
      this.resource = this.$resource('/people/:id');
      console.log(this.person);
    },
    methods: {
      update: function(e) {
        e.preventDefault();

        this.error.updateContent = null;

        this.$http.put('/people/1', { name: e.targetVM.name }, function(data) {
          console.log(data);
        })
        .error(function(data) {
          console.log(data);
          this.error.updateContent = data.content[0];
        });
      }
    }
  })
});
