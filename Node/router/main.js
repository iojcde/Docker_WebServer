module.exports = function(app)
{
   app.get('/',function(req,res){
      res.render('dotOS.html')
   });

   app.get('/fridge',function(req,res){
      res.render('fridge.html')
   });


   app.get('/dt',function(req,res){
      res.render('dotOS.html')

   app.get('*', function (req, res) { 
      res.sendFile(__dirname+'/public/dotOS.html'); 
   }) 
     });

}
