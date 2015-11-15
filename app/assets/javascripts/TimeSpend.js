var TimeSpend = Vue.extend({
  template: '{{ min }}:{{ sec }}',
  data: {
    sec: 0,
    min: 0
  },
  ready: function() {
    setInterval($.proxy(function() {
      this.sec = pad(++this.sec % 60);
      // console.log(this.sec);
      this.min = pad(parseInt(this.sec / 60, 10));
    }, this), 1000);
  }
})

function pad(val) {
  // console.log(val);
  return val > 9 ? val : '0' + val;
}
