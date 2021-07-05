$(document).ready(function(){
        var arrow=$(".arrowup");
        var form=$(".login-form");
        var status=false;
       
        
        $("#book").click(function(event){
            event.stopPropagation();
                event.preventDefault();
                if(status==false)
                {
                    arrow.fadeIn();
                    form.fadeIn();
                    status=true;
                }
                else
                {
                    arrow.fadeOut();
                    form.fadeOut();
                    status=false;
                }          
            
        });
        $(".close-btn").click(function(){
             arrow.fadeOut();
                    form.fadeOut();
        });
       
       
       
    });
    