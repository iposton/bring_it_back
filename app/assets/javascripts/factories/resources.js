(function(){
    angular
        .module('app')
        .factory('Resources', Resources);

        Resources.$inject = ["$resource", 'ipCookie'];

    function Resources($resource, ipCookie, type){

        var Resource = function(type){

            var self = this;
            self.ipCookie = ipCookie('id');             

            self.service = 
                $resource('/api/' + type + '/:id', {
                    id: '@id'
                }, {
                  query: {
                    method: 'GET',
                    isArray: true
                  },
                  get:{
                    method: 'GET',
                    params:{id: self.ipCookie}
                  },
                  save: {
                    method: 'POST',
                    params:{user_id: self.ipCookie}
                  },
                  update: {
                    method: 'PUT',
                    params:{user_id: self.ipCookie}
                  }
                });



            return self.service;
        };      

        return Resource;

    }


}).call(this);