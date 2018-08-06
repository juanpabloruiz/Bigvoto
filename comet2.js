var xmlhttp = function()
    {
        var a;try{a = new XMLHttpRequest();}
        catch(e){try{a = new ActiveXObject('Msxml2.XMLHTTP');}
        catch(e){try{a = new ActiveXObject('Microsoft.XMLHTTP');}
        catch(e){alert('Your browser doesn\'t support ajax');a=false;}
        }}return a;
    };
    window.onload = function()
    {
        var a = new comet();
    };
    var comet = function()
    {
        var a = new xmlhttp();
        a.open('post',window.location+"?"+Math.random()+"="+Math.random(), true);
        a.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
        a.onreadystatechange = function()
        {
            if(a.readyState == 4)
            {
                document.getElementById('content2').innerHTML = a.responseText;
                window.setTimeout(function(){
                    a = new comet();
                },1000);

            }
        };
        a.send('algo=algo');
    };
