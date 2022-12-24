const url = 'https://media.discordapp.net/attachments/1056304767023972373';

enum IntroduceAssets {
  backgroud('$url/1056304818395828335/background.png?width=318&height=671'),
  chat('$url/1056304819062706176/chat.png?width=671&height=671'),
  celular('$url/1056304818739740814/celular.png?width=671&height=671'),
  aviso('$url/1056304822015492106/aviso.png?width=671&height=671'),
  engrenagens('$url/1056304819402461294/engrenagens.png?width=671&height=671'),
  lampada('$url/1056304819717013534/lampada.png?width=671&height=671'),
  tresPontinhoBarrinha('$url/1056304821734494268/tres_pontinho_barrinha.png'),
  logoMangaEasy('$url/1056304821419905124/logo_manga_easy.png');

  final String link;
  const IntroduceAssets(this.link);
}
