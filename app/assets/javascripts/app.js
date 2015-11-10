$(document).on('ready page:load', function() {
  Vue.http.headers.common['X-CSRF-TOKEN'] = $('input[name=authenticity_token]').val();

  var vm = new Vue({
    el: '#form',
    data: {
      person: {
        publicId:     $('#person_public_id').val(),
        // firstName:    { name: 'first_name'   },
        // lastName:     { name: 'last_name'    },
        // birthDate:    { name: 'birth_date'   },
        // postalCode:   { name: 'postal_code'  },
        // city:         { name: 'city'         },
        // thoroughfare: { name: 'thoroughfare' }
      },
      error: {
        updateContent: null
      }
    },
    ready: function() {
      console.log(this.person.firstName.value);
      // var resource = this.$resource('/people/:publicId');

      // resource.get({ publicId: this.person.publicId }, function(person, status, request) {
      //   console.log(person);
      //   // this.person = person;
      //   // http://vuejs.org/api/#vm-set
      //   this.$set('person', person);
      // });

       // Save item
      // resource.save({ publicId: this.publicId }, { person: this.person }, function(data, status, request) {
      //   // handle success
      // })
      // .error(function(data, status, request) {
      //   // handle error
      // });

      // this.person = this.$resource('/people/:id');
      // console.log('ready: ' + this.person);
    },
    methods: {
      update: function(e) {
        e.preventDefault();

        this.error.updateContent = null;

        var fieldName = e.target.name.getAttributeName();
        var fieldValue = this.person[fieldName.toCamelCase()].value;
        var params = {};

        params[fieldName] = fieldValue;
        // console.log(params);

        this.$http.put('/people/' + this.person.publicId, params, function(data, status, request) {
          // console.log(data);

          $(e.target).addClass('form-control-success')
                     .closest('.form-group').addClass('has-success');
        }).error(function(data, status, request) {
          console.log(data);

          this.error.updateContent = data.content[0];

          $(e.target).addClass('form-control-error')
                     .closest('.form-group').addClass('has-error');
        });
      }
    }
  });
});

// From camelCase to snakeCase
String.prototype.toSnakeCase = function() {
  return this.replace(/([A-Z])/g, function($1) {
    return '_' + $1.toLowerCase();
  });
};

// From snakeCase to camelCase
String.prototype.toCamelCase = function() {
  return this.replace(/(\_[a-z])/g, function($1) {
    return $1.toUpperCase().replace('_', '');
  });
};

String.prototype.getActiveRecord = function() {

};

String.prototype.getAttributeName = function() {
  return this.match(/[a-zA-Z0-9]+\[(.+)\]/i)[1];
};
