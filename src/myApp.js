
function MyApp() {
   var name = 'myapplication';
   var version = '1.0'

   function setName(newName) {
      name = newName;
   }
   function getName() {
      return name;
   }
   
   function getVersion() {
      return version;
   }

   
   return {
      setName: setName,
      getName: getName,
      getVersion: getVersion
   }; 
}


var app = MyApp(); 
console.log(app.getName());
