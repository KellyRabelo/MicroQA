def factory_new_partner():
  partner = {
    'name': 'Pizzas Papito',
    'email': 'contato@papito.com.br',
    'whatsapp': '61994408818',
    'business': 'Restaurante'
  }
  return partner

def factory_dup_name():
  partner = {
    'name': 'Kelly rabelo',
    'email': 'contato@gmail.com.br',
    'whatsapp': '619999999999',
    'business': 'conveniência'
    }
  return partner

def factory_partner_list():
  p_list = [
    {
    'name': 'Kelly rabelo',
    'email': 'contato@gmail.com.br',
    'whatsapp': '619999999999',
    'business': 'conveniência'
    },
     {
    'name': 'Teste 01',
    'email': 'Teste01o@gmail.com.br',
    'whatsapp': '619999991111',
    'business': 'conveniência'
    },
     {
    'name': 'Teste 02',
    'email': 'Teste02@gmail.com.br',
    'whatsapp': '619999992222',
    'business': 'conveniência'
    }
  ]
  return p_list