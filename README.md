# Conclusão projeto BECA MOBILE IOS

*Sobre o curso da Alura 

Achei muito boa toda dinâmica do curso, consegui concluir as atividades do curso, apesar de ter que voltar em algumas coisas para fixar o conhecimento, achei a formação agregou muito meu conhecimento, tendo em vista que eu já havia estudado apenas Java há bastante tempo.

*Sobre o apoio dos líderes do projeto 

Vocês nos apoiaram muito e nos incentivaram muito, acredito que esse case do projeto foi de muito sucesso, espero participar de mais projetos nesse formato de formação pois acho que é de extrema valia para nossa carreira dentro da Everis e como profissionais de forma geral.

*Sobre o projeto final

A princípio achei que não seria capaz de fazer a entrega, mas confesso que acabei me esquecendo que estamos trabalhando em equipe e quando me lembrei disso consegui sinalizar minhas dificuldades para os membros do time e eles me ajudaram a desenrolar e seguir no objetivo.

*Sobre como desenvolvi meu APP 

Minha maior dificuldade com certeza foi em relação as APIs, primeiro que não havia entendido muito bem o conceito, e me esforcei para estudar e poder entender, no segundo momento não sabia como fazer, e foi ai que retornei ao curso da Alura e recorri a internet de forma geral. 

Meu projeto foi estruturado conforme as funções, acredito que daria para refatorar mais, porém esse foi o limite em que consegui, na classe Filme API fiz a lógica para poder comunicar meu código com API, usei o Alamofire com o metogo Get e tive que fazer o tratamento da resposta com o switch case, com essa classe pronta continuei a construção do meu App.

Na API verifiquei quais eram os atributos e coloquei todos na classe FILME com o método init, esses foram meus dois model, com eles prontos consegui trabalhar melhor.

Passei então para construção do layout da tela, criei a primeira tela e seu view controller, coloquei um stackview para poder controlar as constrainst melhor e a exibição em outros aparelhos, inseri o conceito de coleção, assim podia fazer o controle das minhas células e esse controller coloquei em uma classe diferente ColecaoDeFilmeControllerViewCell, nela coloquei os outlets que iria utilizar, nessa tela apenas a imagem e então tratei elas no view controller.

Uma outra dificuldade que tive foi pegar o retorno da requisição e poder transformar ela em um objeto que eu pudesse manipular, realizei isso com a ajuda de algumas classes do swift jsonDeserealization, esses métodos estão na classe de filmes, e o método que realmente pega essas informações e transforma eles em objeto está no meu view controller getFilme

Com a primeira tela pronta, me dediquei a fazer a segunda tela começando também pelo o layout, por se tratar de uma outra tela, coloquei o viewController dela separado “DetalhesViewController”, como basicamente ela é uma tela apenas de apresentação e não tem muita ação nela tem os outlets setados, porém para uma futura implementação por boas práticas é melhor montar dessa forma.

O próximo passo foi fazer com que o meu clique na imagem passasse para a próxima tela, nessa fase usei o didselectitem método para pegar o clique e percorrer a minha lista de filme e chamar meu view controller de detalhes, esse método está no view controller da home

Acredito que tenha sido isso, tive algumas dificuldades ao longo do curso e acredito que tenha muito o que aprender, mas aprendi muito até aqui!
