const zmiana = {
    btn : document.getElementById("btn"),
  
    startHover: function(){
        zmiana.btn.style.cursor="pointer";
        zmiana.btn.style.background="white";
       
    },

    stopHover: function(){
        zmiana.btn.style.cursor="default";
        zmiana.btn.style.background="";
        
    },
 
init: function(){
    this.btn.addEventListener('mouseenter', this.startHover);
    this.btn.addEventListener('mouseleave', this.stopHover);
},

}
zmiana.init();

console.log("test");