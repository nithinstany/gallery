function insert_fields(content, variable_name, container) {
  var random_id = new Date().getTime();
  var htmlText = content.replace(new RegExp(variable_name, 'g'), random_id);
  $(container).append(htmlText);
}


function remove_fields(link) {
  var hidden_field = $(link).parents('div:first').parents('div:first').find("input[type=hidden]").val('1');
  $(link).parents('div:first').parents('div:first').hide();
}

