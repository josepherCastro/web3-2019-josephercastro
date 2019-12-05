admin = User.create! email: 'admin@admin.com', password: '123456', password_confirmation: '123456'
admin.create_funcionario! nome: 'Admin', cargo: :admin

ze = User.create! email: 'ze@ze.com', password: '123456', password_confirmation: '123456'
ze.create_funcionario! nome: 'Zé', cargo: :almoxarife

unidade = UnidadeMedida.new nome: 'Unidade'
unidade = UnidadeMedida.new nome: 'Kilo'
unidade = UnidadeMedida.new nome: 'Mililitros'
unidade = UnidadeMedida.new nome: ''