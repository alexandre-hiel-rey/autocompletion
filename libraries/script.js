$(document).ready(function(){
    console.log('Document loaded');
    
    $('#search_input').on('input', function(){
        if($('#search_input').val() == ''){
            $('#results').hide();
        }
        else{
            $('#results').show(150);
            var char = $('#search_input').val();
            $.ajax({
                url: 'api/search.php',
                method: 'GET',
                data: {char:char},
                // dataType: 'json',
                success: function(data){

                    if(data == ''){
                        $('#results').html("<p id='noresult'>Aucun résultat</p>");
                    }
                    else{
                        $('#noresult').remove();
                        data = JSON.parse(data);
                        $('#results').empty();
                        $.each(data, function(game){
                            var id = data[game].id; 
                            var name = data[game].nom; 
                            $('#results').append("<a href='recherche.php?search=" + name + "'><div class='result'><p>" + name + "</p></div></a>");
                        })
                        
                    }
                },
                error: function(e){
                    console.error('Erreur' + e);
                }
            })
        }
    })
    
    $('#header_search_bar').on('input', function(){
        if($('#header_search_bar').val() == ''){
            $('#header_results').hide();
        }
        else{
            $('#header_results').show(150);
            var char = $('#header_search_bar').val();
            $.ajax({
                url: 'api/search.php',
                method: 'GET',
                data: {char:char},
                // dataType: 'json',
                success: function(data){

                    if(data == ''){
                        $('#header_results').html("<p id='noresult'>Aucun résultat</p>");
                    }
                    else{
                        $('#noresult').remove();
                        data = JSON.parse(data);
                        $('#header_results').empty();
                        $.each(data, function(game){
                            var id = data[game].id; 
                            var name = data[game].nom; 
                            $('#header_results').append("<a href='recherche.php?search" + name + "'><div class='result'><p>" + name + "</p></div></a>");
                        })
                        
                    }
                },
                error: function(e){
                    console.error('Erreur' + e);
                }
            })
        }
    })
    
})