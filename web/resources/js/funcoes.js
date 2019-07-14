function finalizaAgora(id) {
    $.post("finalizaTarefa", {'id' : id}, function(resposta) {
        $("#tarefa_"+id).html(resposta);
    });
}

function removeAgora(id) {
    $.post("removeAgora", {'id' : id}, function () {
        $("#tarefa_"+id).closest("tr").hide();
    })
}