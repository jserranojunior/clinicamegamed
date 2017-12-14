
$(document).ready(function(){
    $("#addCategory").click(function(){
    
        $('#category-select').css('display','none');
         $('#category-text').css('display','block');
    });


        $('#tableStock').DataTable({
            "language": {
                "lengthMenu": "Exibindo _MENU_ exibidos por página",
                "zeroRecords": "Nada encontrado - desculpe",
                "info": "Exibindo página _PAGE_ of _PAGES_",
                "infoEmpty": "Sem gravações disponíveis",
                "infoFiltered": "(filtro de _MAX_ gravações totais)"
            },
            "iDisplayLength": 20

        });

});

