import 'package:intro_screen/src/domain/models/introduce_model.dart';

class IntroduceController {
  final introduces = [
    IntroduceModel(
      title: 'A criação do projeto',
      logo: 'imagens/lampada.png',
      paragrafos: [
        'O Criador do Mangá Easy, após muito procurar, não encontrou nenhum aplicativo de leitura de mangá que atendesse seus desejos.\n',
        'Então, começou a criar do zero uma plataforma para leitura de mangás, inicialmente  sua finalidade era apenas para uso privado.\n',
        'O esforço acarretou no desejo de compartilhá-lo, o que fez com que ele o publicasse na Play Store.',
      ],
    ),
    IntroduceModel(
      title: 'O Desenvolvimento do projeto',
      logo: 'imagens/engrenagens.png',
      paragrafos: [
        'A Equipe do Mangá Easy conta com apenas um programador, o próprio desenvolvedor, o criador.\n',
        'A Equipe é não assalariada, voluntários, leitores que se prontificaram a ajudar na colaboração da criação do aplicativo, Manga Easy. Queremos que os leitores usufruam da melhor experiência.\n',
        'O aplicativo está se desenvolvendo sem pretensão de lucros extras, apenas o suficiente para manter a plataforma on-line.',
      ],
    ),
    IntroduceModel(
      title: 'Os Anúncios',
      logo: 'imagens/aviso.png',
      paragrafos: [
        'As propagandas foram colocadas para poder manter o aplicativo, como já citado, não visamos lucro. Ademais, as propagandas em forma de pop-up, aparecem em um período de a cada 1 hora, enquanto você lê.\n',
        'Para poder remover os ADS, é preciso comprar o emblema de doador, que conta com benefícios exclusivos, por apenas uma única compra de 4,99 você fica permanentemente livre dos pop-ups! Ganha benefícios no perfil, e um emblema de cobre.',
      ],
    ),
    IntroduceModel(
      title: 'O Aplicativo',
      logo: 'imagens/celular.png',
      paragrafos: [
        "O Mangá Easy não se responsabiliza por mangás com erros de página, ele somente é um agrupador de host's, não lançamos mangás, pois não somos uma Scan.\n",
        'Por Enquanto, estamos em BETA, ao instalar o aplicativo o leitor deve-se estar ciente de que poderão haver alguns bugs, por isso temos no próprio aplicativo, uma parte para “Melhorias”, onde você pode enviar sugestões.',
      ],
    ),
    IntroduceModel(
      title: 'BETA tester e Comunidade',
      logo: 'imagens/chat.png',
      paragrafos: [
        'Para ser um pré-beta tester, você deve entrar em nossa comunidade no discord, onde haverá uma aba de geral e você poderá pedir no #beta interno para participar!\n',
        'A diferença de versão e que você irá procurar erros dentro do aplicativo nas correções que acabam de ser adicionadas, antes de serem lançadas novas versões na Play Store.\n',
        'Além disso, nossa comunidade no Discord conta com ótimas recomendações feitas pela equipe, e um chat para os membros do Mangá Easy, jogos, e concursos.',
      ],
    )
  ];
}
