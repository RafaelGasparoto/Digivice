import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'CustomSearchDelegate.dart';
import 'DigimonShowcase.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  playSound(String path) async {
    AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();
    await audioPlayer.open(Audio('assets/audio/$path'));
  }

  @override
  void initState() {
    super.initState();
    playSound('digimon_intro.mp3');
  }

  String _result = '1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          centerTitle: true,
          flexibleSpace: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 28, right: 60),
                child: Image.asset('images/logo_digimon.png', height: 90),
              ),
              IconButton(
                onPressed: () async {
                  String? res = await showSearch(
                    context: context,
                    delegate:
                        CustomSearchDelegate(digimonsSuggestions: allDigimons),
                  );
                  setState(() {
                    _result = res!;
                  });
                  playSound('digi.mp3');
                },
                icon: const Icon(Icons.search),
                iconSize: 30,
                padding: const EdgeInsets.only(top: 35, right: 20),
              )
            ],
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            IconButton(
              onPressed: () {
                if (_result == "Agumon")
                  playSound('Agumon_chama_nenem.mp3');
                if (_result == "Gabumon")
                  playSound('Gabumon_rajada_azul.mp3');
                if (_result == "Piyomon")
                  playSound('Piyomon_espiral_magico.mp3');
                if (_result == "Tentomon")
                  playSound('Tentomon_trovao_bebe.mp3');
                if (_result == "Palmon")
                  playSound('Palmon_hera_venenosa.mp3');
                if (_result == "Patamon")
                  playSound('Patamon_bolha_de_ar.mp3');

              },
              icon: Icon(Icons.play_arrow_sharp),
              color: Colors.deepOrange,
            ),
            Expanded(child: DigimonShowcase(_result)),
          ],
        ),
      ),
    );
  }
}

final List<String> allDigimons = [
  'Garummon',
  'Craniummon',
  'Holy Angemon',
  'Ancient Beatmon',
  'Dukemon(Crimson Mode)',
  'Footmon',
  'Apocalymon',
  'Mush-Upped Mach Leomon',
  'Chibickmon',
  'Zombiemon',
  'Pipismon',
  'Greymon (2010 Anime Version)',
  'Amon',
  'Guilmon (X-Antibody)',
  'Craniummon (X-Antibody)',
  'Technodramon',
  'Grace Novamon',
  'Ancient Troiamon',
  'Guardromon',
  'Etemon',
  'Sagittarimon',
  'Rhinomon',
  'JESmon GX',
  'Cyberdramon',
  'Cyberdramon (X-Antibody)',
  'Pukamon',
  'Sand Yanmamon',
  'Hackmon',
  'Pururumon',
  'Arresterdramon',
  'Togemon (X-Antibody)',
  'Bagramon (Archangel Form)',
  'Gerbemon',
  'XV-mon (Black)',
  'Neamon',
  'Alraumon',
  'Cyberdramon (2010 Anime Version)',
  'Mimicmon',
  'Shamamon',
  'Beowolfmon',
  'Shoutmon X4S',
  'Triceramon',
  'Xros Up Arresterdramon (Dobermon)',
  'Bio Coatlmon',
  'Mori Shellmon',
  'Mega Darkness Bagramon',
  'Hagurumon (X-Antibody)',
  'Regulumon',
  'Xros Up Gumdramon (Kotemon)',
  'Apollomon Darkness Mode',
  'Star Axe',
  'Chibi Kiwimon',
  'Gattai Ancient Volcamon',
  'Pharaohmon',
  'Mamemon (X-Antibody)',
  'Suijinmon',
  'Dot Falcomon',
  'Vikemon',
  'Pafumon',
  'Geo Greymon',
  'Meramon (X-Antibody)',
  'Numemon (X-Antibody)',
  'Bacchusmon',
  'Shutumon',
  'Dark Tyranomon',
  'Death Airdramon',
  'Were Garurumon',
  'Platinum Scumon',
  'Herakle Kabuterimon (X-Antibody)',
  'Andromon',
  'Lilimon',
  'Ganimon (X-Antibody)',
  'Growmon (Orange)',
  'Anomalocarimon (X-Antibody)',
  'Lunamon',
  'Metal Greymon (X-Antibody)',
  'Shellmon',
  'Pawn Shoutmon',
  'Calamaramon',
  'Neo Devimon',
  'Shoutmon X4K',
  'Garudamon (X-Antibody)',
  'Xros Up Omega Shoutmon (Dorulumon)',
  'Barbamon',
  'Goromon',
  'Agumon -Yuki no Kizuna-',
  'Mochimon',
  'Navimon',
  'Shoutmon X7(Superior Mode)',
  'Tokomon',
  'Bibimon',
  'Sleipmon (X-Antibody)',
  'Archelomon',
  'Ravmon',
  'Fangmon',
  'Earthdramon',
  'Ankylomon',
  'Xros Up Arresterdramon (Astamon)',
  'Panjyamon',
  'Demon (X-Antibody)',
  'Snow Goburimon',
  'Seraphimon',
  'Orcamon',
  'Liollmon',
  'Bio Darkdramon',
  'Pupumon',
  'Goddramon (X-Antibody)',
  'Kodokugumon Baby',
  'Cherubimon (Vice) (X-Antibody)',
  'Vorvomon',
  'Gizmon(AT)',
  'Dark Maildramon',
  'Cyclomon',
  'Patamon',
  'Chicomon',
  'Missimon',
  'Terriermon (X-Antibody)',
  'Panbachimon',
  'Xros Up Dorulumon (Pawn Chessmon (White))',
  'Baluchimon',
  'Shine Greymon(Burst Mode)',
  'Ravmon(Burst Mode)',
  'Aegiochusmon(Holy)',
  'Siesamon (X-Antibody)',
  'King Hangyomon',
  'Mihiramon',
  'Toropiamon',
  'Blastmon',
  'Knightmon Wise Sword Mode',
  'Skull Knightmon(Naginata Mode)',
  'Okuwamon (X-Antibody)',
  'Xros Up Submarimon (Plesiomon)',
  'Gulus Gammamon',
  'Pawn Chessmon (White)',
  'Rize Greymon (X-Antibody)',
  'Demon Super Ultimate',
  'Valkyrimon',
  'Elecmon (Violet)',
  'Wolfmon',
  'Ornismon',
  'Delumon',
  'Algomon (Baby I)',
  'Queen Chessmon',
  'Gargomon',
  'Hookmon',
  'Skull Knightmon(Cavalier Mode)',
  'Canoweissmon',
  'Falcomon (2006 Anime Version)',
  'Shroudmon',
  'Omega Shoutmon',
  'Mega Seadramon (X-Antibody)',
  'Pteranomon',
  'Arkadimon Child',
  'Yuramon',
  'Black Growmon',
  'Honeybeemon',
  'Black Megalo Growmon',
  'Gekomon',
  'Burpmon',
  'Assaultmon',
  'Black War Greymon',
  'Parallelmon',
  'Pegasmon (X-Antibody)',
  'Waru Monzaemon',
  'Monimon',
  'Eosmon (Adult)',
  'Tankmon',
  'Gottsumon',
  'Torikara Ballmon',
  'Lady Devimon',
  'Psychemon',
  'Death-X-DORUgamon',
  'Būmon',
  'Monochromon (X-Antibody)',
  'Togemogumon',
  'Hippogriffomon',
  'Death-X-mon',
  'Nefertimon (X-Antibody)',
  'Yatagaramon (2006 Anime Version)',
  'Master V-dramon',
  'Shoutmon + Jet Sparrow',
  'Megidramon',
  'Were Garurumon (X-Antibody)',
  'Dynasmon (X-Antibody)',
  'Justimon(Critical Arm)',
  'Omegamon Alter-B',
  'Shoutmon X3',
  'Callismon',
  'Dark Knightmon (X-Antibody)',
  'Tyrant Kabuterimon',
  'Tsumemon',
  'Giga Seadramon',
  'Scud Missimon',
  'Cannondramon',
  'Hermmon',
  'Aegiochusmon(Green)',
  'Gottsumon (X-Antibody)',
  'Gurimon',
  'Fla Wizarmon',
  'Petitmon',
  'Dracumon',
  'Trailmon Franken',
  'Agumon Hakase',
  'Goburimon',
  'Regalecusmon',
  'Climbmon',
  'Marin Chimairamon',
  'Keemon',
  'Gigantic Numemon',
  'Kotemon',
  'Pteranomon (X-Antibody)',
  'Mega Muso Knightmon',
  'Black Tailmon Uver.',
  'Lucemon(Satan Mode)',
  'Marin Angemon',
  'Tyranomon',
  'Pala Pandamon',
  'Beelzebumon + Starmons',
  'Skull Satamon',
  'Mail Birdramon',
  'Bishop Chessmon (White)',
  'Kohagurumon',
  'Belial Vamdemon',
  'Pajiramon',
  'Z\'d Garurumon',
  'Prince Mamemon',
  'Metal Mamemon',
  'Vermillimon',
  'Nikkorimon',
  'Skull Baluchimon',
  'Grappu Leomon',
  'Shootmon',
  'Mantaraymon',
  'Infermon',
  'Peacockmon',
  'Bitmon',
  'Greymon (X-Antibody)',
  'Death Metal Greymon',
  'Asuramon',
  'Kokuwamon (X-Antibody)',
  'Ludomon',
  'Shoutmon Y',
  'Hanumon',
  'Zhuqiaomon',
  'Dark Tyranomon (X-Antibody)',
  'Angoramon',
  'Bancho Golemon',
  'Duskmon',
  'Hi Mugendramon',
  'Justimon(Blitz Arm)',
  'Death Tyranomon',
  'Mega Gran Kuwagamon',
  'Neptunemon',
  'Eosmon (Ultimate)',
  'Burgamon Adult',
  'Metamormon',
  'Kyubimon',
  'Gabumon (Black)',
  'Arresterdramon(Superior Mode (Brave Snatcher))',
  'Hexeblaumon',
  'Taomon (Silver)',
  'Titamon',
  'Chaosdramon',
  'Submarimon',
  'Bio Thunderbirmon',
  'Dokimon',
  'Thunderballmon (X-Antibody)',
  'Aegiochusmon(Dark)',
  'DORUgamon',
  'Chaos Dukemon Core',
  'Metal Garurumon',
  'Lilamon',
  'Dodomon',
  'Marsmon',
  'Greymon',
  'Archnemon',
  'Exo Grimmon',
  'Löwemon',
  'Symbare Angoramon',
  'Ofanimon (X-Antibody)',
  'Keramon',
  'Namakemon',
  'Dot Gaomon',
  'Knightmon',
  'DORUgoramon',
  'Orgemon (X-Antibody)',
  'Butterflamon',
  'Kongoumon',
  'Agumon',
  'Puroromon',
  'Megidramon (X-Antibody)',
  'Relemon',
  'Koemon',
  'Puyoyomon',
  'Pillomon',
  'Zudomon',
  'Greymon (Blue)',
  'Pyonmon',
  'Lilithmon (X-Antibody)',
  'Sakuttomon',
  'Vulturemon',
  'Lighdramon',
  'Dokugumon',
  'Yakiimon',
  'Xros Up Opossummon (Candmon)',
  'Imperialdramon(Dragon Mode (Black))',
  'Bryweludramon',
  'Slayerdramon',
  'DORUmon',
  'Boarmon',
  'Chrysalimon',
  'Dark Knightmon (Gulfmon)',
  'Xros Up Ballistamon (Revolmon)',
  'Vademon (X-Antibody)',
  'Lalamon',
  'Sleipmon(Burst Mode)',
  'Noble Pumpmon',
  'Junomon(Hysteric Mode)',
  'Dracomon + Cyberdramon',
  'Salamandamon',
  'Yuki Agumon',
  'Aegisdramon',
  'Tuwarmon',
  'Destromon',
  'Karatuki Numemon',
  'Beso Bombmon',
  'Flybeemon',
  'Batterimon',
  'Grand Dracumon',
  'Rust Tyranomon',
  'Liamon',
  'Cardmon U1',
  'Susanoomon',
  'Fujitsumon',
  'Cardmon C1',
  'Aegiochusmon',
  'BEMmon',
  'Chronomon Holy Mode',
  'Ballistamon SR',
  'Strikedramon',
  'Lopmon (X-Antibody)',
  'Arkadimon Baby',
  'Holydramon (X-Antibody)',
  'Black War Greymon (X-Antibody)',
  'Snatchmon',
  'Tailmon',
  'Ulforce V-dramon Future Mode',
  'Tyumon',
  'Dagomon',
  'Hangyomon',
  'Starmons',
  'Orgemon',
  'Zamielmon',
  'Ancient Wisemon',
  'Magnamon',
  'Gold Numemon',
  'Digitamamon',
  'Demon',
  'Dark Superstarmon',
  'Unimon',
  'Tailmon (X-Antibody)',
  'Nanimon',
  'Aequcedramon',
  'Pusumon',
  'JESmon',
  'Garurumon (X-Antibody)',
  'Tactimon',
  'Lotusmon',
  'Raijinmon',
  'Sheepmon',
  'Numemon',
  'Aldamon',
  'Lykamon',
  'Omegamon Alter-S',
  'Chibick Sword',
  'Vikaralamon',
  'Copymon',
  'Grademon (Vice)',
  'Ekakimon',
  'Skull Mammon (X-Antibody)',
  'Griffomon',
  'Vegimon',
  'Blikmon',
  'Generamon',
  'Vulcanusmon',
  'Shoutmon X6',
  'Cardmon S1',
  'Plesiomon (X-Antibody)',
  'Platinum Numemon',
  'Babydmon',
  'Seahomon',
  'Manticoremon',
  'Cheer Galmon',
  'Gabumon',
  'Volcanicdramon',
  'Cocomon',
  'Chaosmon(Valdur Arm)',
  'Dot Mirage Gaogamon',
  'Kakkinmon',
  'Imperialdramon(Paladin Mode)',
  'Botamon',
  'Chamelemon',
  'Kuwagamon (X-Antibody)',
  'Ponchomon',
  'Rook Chessmon (White)',
  'Ragna Lordmon',
  'Exermon',
  'Apollomon',
  'Rhino Kabuterimon',
  'Gogmamon',
  'Starmon',
  'Tentomon',
  'Tortamon',
  'Wingdramon',
  'Beelzebumon',
  'Negamon (Evolved Form)',
  'Fufumon',
  'Betel Gammamon',
  'Dynasmon',
  'Agumon (Black) (X-Antibody)',
  'Mach Gaogamon',
  'Shoutmon SH',
  'Ofanimon(Falldown Mode (X-Antibody))',
  'Spadamon',
  'Silphymon',
  'Black Shoutmon X7',
  'Neo Vamdemon',
  'Dorimon',
  'Junkmon',
  'Sakuyamon(Miko Mode)',
  'Blossomon',
  'Rampage Greymon',
  'Bio Spinomon',
  'Gankoomon',
  'Shademon',
  'Agumon (Black) (2006 Anime Version)',
  'Devimon',
  'Shoutmon X3GM',
  'Burgamon',
  'Gumdramon',
  'Ochi Musyamon',
  'Peckmon',
  'Gankoomon (X-Antibody)',
  'Trailmon Raccoon Dog',
  'Devitamamon',
  'Vajramon',
  'King Chessmon',
  'Ultimate Brachimon',
  'Pawn Chessmon (Black)',
  'Sunarizamon',
  'Cherubimon (Virtue) (X-Antibody)',
  'Waspmon',
  'Superstarmon',
  'Parasimon',
  'Flare Lizamon',
  'Metal Tyranomon',
  'Shoutmon X4B',
  'Ebidramon',
  'Blade Kuwagamon',
  'Cotsucomon',
  'Xros Up Tuwarmon (Superstarmon)',
  'Super Dark Knightmon',
  'Gusokumon',
  'Deathmon',
  'Hudiemon',
  'Budmon',
  'Ajatarmon',
  'Parrotmon',
  'Blizzarmon',
  'Black Seraphimon',
  'Pickmon',
  'Kuwagamon',
  'Chronomon Destroy Mode',
  'Minotaurmon',
  'Birdramon',
  'Black Seraphimon (DW3)',
  'Jokermon',
  'Minomon',
  'Metal Greymon (Virus)',
  'Monitamon',
  'Yaeger Dorulumon',
  'Gigadramon',
  'Centalmon',
  'Omegamon(Merciful Mode)',
  'Penmon',
  'Valdurmon',
  'Tuchidarumon',
  'Cerberumon (X-Antibody)',
  'Entmon',
  'Chicchimon',
  'Sunamon',
  'Gaioumon(Itto Mode)',
  'Mojyamon',
  'Vamdemon (X-Antibody)',
  'Metal Mamemon (X-Antibody)',
  'Kyaromon',
  'Bloom Lordmon',
  'Black Gaogamon',
  'Shadramon',
  'Rasenmon',
  'Trailmon Battle Form',
  'Lord Knightmon',
  'Makuramon',
  'Mechanorimon',
  'Shoutmon X7',
  'King Etemon',
  'Xros Up Arresterdramon (Metal Tyranomon)',
  'Scorpiomon',
  'Dracomon (X-Antibody)',
  'Quartzmon',
  'Dinohumon',
  'Trailmon of Darkness',
  'ShouCutemon',
  'Pumpmon',
  'Gattai Lilithmon',
  'Bio Lotusmon',
  'Great King Scumon',
  'Buraimon',
  'Deadly Axemon',
  'Luminamon (Nene Ver.)',
  'King Whamon',
  'Lynxmon',
  'Mothmon',
  'Bomber Nanimon',
  'Shakamon',
  'Nohemon',
  'Tafa Pandamon',
  'Skull Knightmon (White)',
  'Velgrmon',
  'Kozenimon',
  'Mokumon',
  'Wanyamon',
  'Maildramon',
  'Doumon',
  'Mitamamon',
  'Chimairamon',
  'Greymon + Skull Knightmon',
  'Weddinmon',
  'Red Vegimon',
  'Anomalocarimon',
  'Clavis Angemon',
  'Dark Knightmon',
  'Guilmon',
  'Beelzebumon (2010 Anime Version)',
  'Angewomon (X-Antibody)',
  'Battle Armament Trailmon',
  'Darcmon',
  'Imperialdramon(Dragon Mode)',
  'Troopmon',
  'Lekismon',
  'Ganvivormon',
  'Astamon',
  'Sakuteki Monitamon',
  'White Lopmon',
  'Lampmon',
  'Gravimon',
  'Grottemon',
  'Harpymon',
  'Bancho Mamemon',
  'Alphamon(Ouryuken)',
  'Icemon',
  'Holy Angemon(Priest Mode)',
  'Taomon',
  'Aegiochusmon(Blue)',
  'Goddramon',
  'Beelzebumon + Revolmon',
  'Skull Greymon',
  'Guardromon (Gold)',
  'Fros Velgrmon',
  'Barbamon (X-Antibody)',
  'Minidekachimon',
  'Arbormon',
  'Allomon (X-Antibody)',
  'Tekkamon',
  'Hiyarimon',
  'Red V-dramon',
  'Bommon',
  'Ballistamon MC',
  'Revolmon',
  'Devidramon',
  'Huanglongmon',
  'Puyomon',
  'Orochimon',
  'Clear Agumon',
  'Gulfmon',
  'Dot Agumon',
  'Choromon',
  'Dark Knightmon (Lilithmon)',
  'Ofanimon(Falldown Mode)',
  'Herissmon',
  'Soulmon',
  'Shurimon',
  'Ohakadamon',
  'Goatmon',
  'Aero V-dramon',
  'Meicrackmon',
  'Pokomon',
  'Megalo Growmon (Orange)',
  'Gesomon',
  'Jyarimon',
  'Hi-Vision Monitamon',
  'Skull Knightmon',
  'Minotaurmon Adult',
  'Frimon',
  'Tukaimon',
  'Deckerdramon Float Mode',
  'Sanzomon',
  'Tyranomon (X-Antibody)',
  'Breakdramon',
  'Jupitermon(Wrath Mode)',
  'Chaos Grimmon',
  'Rhinomon (X-Antibody)',
  'Caturamon',
  'Dukemon (X-Antibody)',
  'Trailmon Buffalo',
  'Loader Liomon',
  'Monzaemon',
  'Black Saint Galgomon',
  'Apollomon Whispered',
  'Panjyamon (X-Antibody)',
  'Shoutmon X3SD',
  'Ginryumon',
  'Manbomon',
  'Yarmon',
  'Kudamon (2006 Anime Version)',
  'Cardmon R2',
  'EBEmon',
  'Arresterdramon(Superior Mode)',
  'Chaos Dukemon',
  'Betsumon',
  'Bakemon',
  'Kumbhiramon',
  'Strabimon',
  'Chokimon',
  'Ancient Sphinxmon',
  'Dark Lizamon',
  'Pickmons Slingshot',
  'Greymon (Ash)',
  'Siesamon',
  'Evilmon',
  'Grademon',
  'Bancho Leomon',
  'Kaus Gammamon',
  'Bastemon',
  'Petermon',
  'Seadramon',
  'Ultimate Chaosmon',
  'Phelesmon',
  'Thunderbirmon',
  'Black Galgomon',
  'Millenniumon',
  'Fuximon',
  'Otamamon (X-Antibody)',
  'Kyubimon (Silver)',
  'Stingmon (Black)',
  'Trailmon Kettle',
  'Mammon',
  'Darkdramon',
  'Grandis Kuwagamon',
  'Ragnamon',
  'Bao Hackmon',
  'Butenmon',
  'Shivamon',
  'V-mon',
  'Tesla Jellymon',
  'V-dramon',
  'Tokomon (X-Antibody)',
  'Olegmon',
  'Palmon',
  'Agumon (2006 Anime Version)',
  'Wisemon',
  'Xros Up Arresterdramon (Blossomon)',
  'Gizmon(XT)',
  'Shoutmon X5B',
  'Sistermon Blanc (Awaken)',
  'Ofanimon Core',
  'Aquilamon',
  'Grey Knightsmon',
  'Prairiemon',
  'Ice Devimon Enhancement Absorbent',
  'Mephismon (X-Antibody)',
  'Koromon',
  'Piccolomon',
  'Shoutmon DX',
  'Savior Hackmon',
  'Chaosmon',
  'Pulsemon',
  'Neo Vamdemon Darkness Mode (Vampire Army)',
  'Justimon(Accel Arm)',
  'Sakuyamon (X-Antibody)',
  'Slash Angemon',
  'Dorulumon',
  'Paledramon',
  'Gaogamon',
  'Depthmon',
  'Runnermon',
  'Bagramon',
  'Majiramon',
  'Kuzuhamon',
  'Thetismon',
  'El Doradimon',
  'Gabumon -Yujo no Kizuna-',
  'Magna Garurumon',
  'Sparrowmon',
  'Shakomon (X-Antibody)',
  'Metal Greymon',
  'Raptordramon',
  'Plotmon',
  'Reppamon',
  'Rurimon',
  'Giga Breakdramon',
  'Locomon',
  'Beelzebumon(Blast Mode)',
  'Blue Meramon',
  'Splashmon Darkness Mode',
  'Parasaurmon',
  'Dogmon',
  'Guumon',
  'Beelzebumon (X-Antibody)',
  'Aircraft Carrier Whamon',
  'Ogudomon (X-Antibody)',
  'Labramon',
  'Sunflowmon',
  'Hubmon',
  'Knight Chessmon (White)',
  'Rasielmon',
  'Plutomon',
  'Examon',
  'Pawn Gaossmon',
  'Prince Mamemon (X-Antibody)',
  'Octmon',
  'Yo!Yo!mon',
  'Metal Greymon (Virus) (X-Antibody)',
  'Sangomon',
  'Sinduramon',
  'Gazimon (X-Antibody)',
  'Trailmon',
  'Shoutmon X4',
  'Minervamon',
  'Pucchiemon (Green)',
  'Raidenmon',
  'Valvemon',
  'Gammamon',
  'Fairimon',
  'Pinamon',
  'Punimon',
  'Plesiomon',
  'Saber Leomon',
  'Xros Up Shoutmon (Chibi Kamemon)',
  'Lady Devimon (X-Antibody)',
  'Sethmon',
  'Drimogemon',
  'Trailmon Mole',
  'Etemon Chaos',
  'Poyomon',
  'Ganemon',
  'Frogmon',
  'Tyilinmon',
  'Agumon(Burst Mode)',
  'Gaioumon',
  'Xros Up Arresterdramon (Giga Breakdramon)',
  'Eyesmon',
  'Tocanmon',
  'Snimon',
  'Hyokomon',
  'Pucchiemon',
  'Raihimon',
  'Iguneetmon',
  'Ceresmon Medium',
  'Bacomon',
  'Lucemon',
  'Lopmon',
  'Frozomon',
  'Cannonbeemon',
  'Yuki Agumon (2006 Anime Version)',
  'Bancho Stingmon',
  'Jet Mervamon',
  'Raremon',
  'Sistermon Noir (Awaken)',
  'Ancient Megatheriumon',
  'Dobermon',
  'Megadramon',
  'Darkness Bagramon',
  'Jyureimon',
  'Belphemon (X-Antibody)',
  'Pandamon',
  'Dorbickmon Darkness Mode (Flare Lizamon)',
  'Arkadimon Adult',
  'Garurumon (Black)',
  'Babamon',
  'Rapidmon Armor',
  'Rosemon(Burst Mode)',
  'Mantaraymon (X-Antibody)',
  'Leomon (X-Antibody)',
  'Black Mach Gaogamon',
  'Jellymon',
  'Jijimon',
  'Citramon',
  'Coatlmon',
  'Algomon (Adult)',
  'Xros Up Arresterdramon (Orgemon)',
  'Lilimon (X-Antibody)',
  'Belphemon(Rage Mode)',
  'Pyocomon',
  'Tinkermon',
  'Monochromon',
  'Youkomon',
  'Atlur Kabuterimon (Red)',
  'Zubaeagermon',
  'Mach Leomon',
  'Tuskmon',
  'Machmon',
  'Fantomon',
  'Kodokugumon Child',
  'Dinorexmon',
  'Gawappamon',
  'Shine Greymon(Ruin Mode)',
  'Gizamon',
  'Tylomon (X-Antibody)',
  'Atlur Kabuterimon (Blue)',
  'Bun',
  'Moonmon',
  'Tia Ludomon',
  'Pidmon',
  'Majuu Lilithmon',
  'Cres Garurumon',
  'Stegomon',
  'Bubbmon',
  'Cerberumon(Werewolf Mode)',
  'Zanbamon',
  'Leviamon (X-Antibody)',
  'Dinotigermon',
  'Cupimon',
  'Shoutmon X2 (Incomplete X4)',
  'Omega Armamon Burst Mode',
  'Searchmon',
  'Diatrymon',
  'Saint Galgomon',
  'Algomon (Child)',
  'Mad Leomon (Orochi Mode)',
  'Shoutmon EX6',
  'Volcamon',
  'Xros Up Arresterdramon (Sparrowmon)',
  'Renamon (X-Antibody)',
  'Done Devimon',
  'Insekimon',
  'Tylomon',
  'Gokuwmon',
  'Xros Up Shoutmon (Pinochimon)',
  'Baboongamon',
  'Meicoomon\'s Unnamed Child Form',
  'Bombmon',
  'Piranimon',
  'Balli Bastemon',
  'Cardmon R1',
  'Metal Piranimon',
  'Mummymon',
  'Algomon (Baby II)',
  'Shima Unimon',
  'Avenge Kidmon',
  'Crescemon',
  'Duftmon(Leopard Mode)',
  'Jet Silphymon',
  'Tiger Vespamon',
  'Elecmon',
  'Kamemon',
  'Digmon',
  'Bearmon',
  'Allomon',
  'Abbadomon Core',
  'Chikurimon',
  'Mad Leomon(Armed Mode)',
  'Ranamon',
  'Armagemon',
  'Medieval Dukemon',
  'Chaos Lord',
  'Shoutmon + Star Sword',
  'Gomamon',
  'Angemon',
  'Sepikmon',
  'Trailmon Worm',
  'Solarmon',
  'Blimpmon',
  'Gold V-dramon',
  'Dokunemon',
  'Jiko Tyumon',
  'Tonosama Mamemon',
  'Kokuwamon',
  'Shawujinmon',
  'Whamon Perfect',
  'Ryudamon',
  'Sangloupmon',
  'Terriermon Assistant',
  'Jyureimon (Christmas Tree)',
  'Jumbo Gamemon',
  'Mirage Gaogamon(Burst Mode)',
  'Huntermon',
  'Shademon (Nene Ver.)',
  'Falcomon',
  'Black Tailmon',
  'Metal Etemon',
  'Herakle Kabuterimon',
  'Mastemon',
  'Victory Greymon',
  'Baromon',
  'Jupitermon',
  'Dorulumon + Starmons',
  'Black King Numemon',
  'Metal Greymon(Alterous Mode)',
  'Daipenmon',
  'Ceresmon',
  'Arkadimon Super Ultimate',
  'Spinomon',
  'Pukumon',
  'Mega Black Shoutmon X7',
  'Cherubimon (Virtue)',
  'Jazamon',
  'Rafflesimon',
  'Metal Seadramon',
  'Dark Knightmon (Duskmon)',
  'Gundramon',
  'Dot Kudamon',
  'Filmon',
  'Moosemon',
  'Metal Greymon (2010 Anime Version)',
  'Owlmon',
  'Omegamon Zwart Defeat',
  'Meicoomon\'s Unnamed Baby Form',
  'Rebellimon',
  'Gladimon',
  'Petaldramon',
  'Hyougamon',
  'Gigimon',
  'Bokomon',
  'Togemon',
  'Mega Seadramon',
  'Tempomon',
  'Gesomon (X-Antibody)',
  'Murmukusmon',
  'Zenimon',
  'Justimon (X-Antibody)',
  'Nise Agumon Hakase',
  'Vritramon',
  'Popomon',
  'Skull Knightmon(Big Axe Mode)',
  'Garurumon',
  'Mad Leomon',
  'Puttimon',
  'Geremon',
  'Zurumon',
  'Commandramon',
  'Death-X-DORUgoramon',
  'Grand Locomon',
  'Vademon',
  'Curimon',
  'Igamon',
  'Lord Knightmon (X-Antibody)',
  'Xros Up Mervamon (Beelzebumon)',
  'Zubamon',
  'Dorbickmon Darkness Mode (Dragon Army)',
  'Atamadekachimon',
  'Chocomon',
  'Grimmon',
  'Mega Decker Greymon',
  'Eyesmon(Scatter Mode)',
  'Sistermon Ciel (Awaken)',
  'Rize Greymon',
  'Sparrowmon AB',
  'Ikkakumon',
  'Renamon',
  'Otamamon (Red)',
  'Dot Kamemon',
  'Shoutmon',
  'Qinglongmon',
  'Gaossmon',
  'Sunmon',
  'Cutemon',
  'Mushmon',
  'Metal Garurumon (Black)',
  'Gazimon',
  'Revolmon + Dorulu Cannon + Starmons',
  'Zassoumon',
  'Betamon (X-Antibody)',
  'Abbadomon',
  'Sistermon Noir',
  'Nidhoggmon',
  'Omegamon Zwart',
  'Holydramon',
  'Mirror Ballmon',
  'Armamon',
  'Piyomon',
  'Urashimamon',
  'Woodmon',
  'Bishop Chessmon (Black)',
  'Ancient Greymon',
  'Dorbickmon Darkness Mode (Huanglongmon)',
  'Junomon',
  'Ogudomon',
  'Culumon',
  'Metal Tyranomon (X-Antibody)',
  'Dinobeemon',
  'Kabukimon',
  'Coronamon',
  'Tonosama Gekomon',
  'Brachimon',
  'Leomon',
  'Beel Starmon',
  'Golemon',
  'Pagumon',
  'Metal Garurumon (X-Antibody)',
  'Skull Knightmon BR',
  'Gururumon',
  'Santa Agumon',
  'Sistermon Blanc',
  'Blitzmon',
  'Kudamon',
  'Poromon',
  'Guidemon',
  'Kenkimon',
  'Chaosdramon (X-Antibody)',
  'Damemon',
  'Volcdramon',
  'Ebi Burgamon',
  'Stingmon',
  'Omega Shoutmon (X-Antibody)',
  'Chaos Seadramon',
  'Puwamon',
  'Kaiser Greymon',
  'Triceramon (X-Antibody)',
  'Tsubumon',
  'Karatenmon',
  'Ganimon',
  'Were Garurumon (Black)',
  'Betamon',
  'Zerimon',
  'Ulforce V-dramon',
  'Danmon',
  'Deadly Tuwarmon',
  'G-Cutemon',
  'Cerberumon',
  'Ordinemon',
  'Duftmon',
  'Bio Stegomon',
  'Deckerdramon',
  'Akatorimon',
  'Diablomon',
  'War Greymon (X-Antibody)',
  'Toy Agumon (Black)',
  'Hydramon',
  'Jiji Shoutmon',
  'Pinochimon',
  'Rasenmon(Fury Mode)',
  'Mega Dark Knightmon',
  'Zeke Greymon',
  'Baihumon',
  'Algomon (Perfect)',
  'Shakomon',
  'Monodramon',
  'Xros Up Astamon (Cerberumon)',
  'Don Shoutmon',
  'Dianamon',
  'Dark Knightmon (Bagramon)',
  'Angewomon',
  'Hi Andromon',
  'Punch Narabimon',
  'Gaiamon',
  'Xros Up Arresterdramon (Sagomon)',
  'Giromon',
  'Sephirothmon',
  'Thunderballmon',
  'Bullmon',
  'Shoutmon X5S',
  'Wormmon',
  'Boutmon',
  'Kiwimon',
  'Metallife Kuwagamon',
  'Pitchmon',
  'Kandoushichaundamon',
  'Turuiemon',
  'Wizarmon (X-Antibody)',
  'Woodwoodymon',
  'Shooting Starmon',
  'Fujinmon',
  'Dominimon',
  'Yaksamon',
  'Reverse Weddinmon',
  'Agnimon',
  'Mephismon',
  'Sethmon Wild Mode',
  'Xros Up Astamon (Triceramon)',
  'Monzaemon (X-Antibody)',
  'Ghostmon',
  'V-dramon (Black)',
  'Garudamon',
  'Ex-Tyranomon',
  'Musyamon',
  'Dorbickmon',
  'Diablomon (X-Antibody)',
  'Phascomon',
  'Paildramon',
  'Metallicdramon',
  'Chaos Piemon',
  'Morphomon',
  'Death Meramon',
  'Flaremon',
  'Madomon',
  'Elephamon',
  'Stiffilmon',
  'Pandamon (2004 Manhua Version)',
  'Saberdramon',
  'Duftmon (X-Antibody)',
  'Proto Gizmon',
  'Splashmon',
  'Mercuremon',
  'Kabuterimon',
  'Surfimon',
  'Growmon',
  'Dobermon (X-Antibody)',
  'Ballistamon',
  'Beel Starmon (X-Antibody)',
  'Captain Hookmon',
  'Rapidmon Perfect',
  'Holsmon',
  'Chackmon',
  'Hououmon (X-Antibody)',
  'Eosmon (Perfect)',
  'Cannonbeemon (Aircraft Carrier)',
  'Starmon (X-Antibody)',
  'Kita Kitsunemon',
  'Ancient Garurumon',
  'Caprimon',
  'Shoutmon X5',
  'Mistymon',
  'Coredramon (Blue)',
  'Pico Devimon',
  'Coelamon',
  'Belphemon(Sleep Mode)',
  'Yukimi Botamon',
  'Andiramon (Deva)',
  'Wizarmon',
  'Kuramon',
  'Keramon (X-Antibody)',
  'Voltobautamon',
  'Plotmon (X-Antibody)',
  'Examon (X-Antibody)',
  'Mercurymon',
  'Sakumon',
  'Gigasmon',
  'Nyokimon',
  'Lilithmon',
  'Dondokomon',
  'Gravimon Darkness Mode',
  'Armadimon',
  'Nyaromon',
  'Venom Vamdemon',
  'Arkadimon Perfect',
  'Yanmamon',
  'Muchomon',
  'Kyukimon',
  'Lucemon(Falldown Mode)',
  'Moon Millenniumon',
  'Candmon',
  'Kaiser Leomon',
  'Shakkoumon',
  'Meramon',
  'Soundbirdmon',
  'Mirage Gaogamon',
  'Venom Vamdemon Undead',
  'Sagomon',
  'Rapidmon (X-Antibody)',
  'Tanemon',
  'Skull Knightmon(Arrow Mode)',
  'Nanomon',
  'Cho·Hakkaimon',
  'Clockmon',
  'Bulkmon',
  'Cockatrimon',
  'Cardmon U2',
  'Trailmon C-89',
  'Durandamon',
  'Shine Greymon',
  'Shoutmon B',
  'Omegamon',
  'Blucomon',
  'Big Mamemon',
  'Dot Shine Greymon',
  'Holy Digitamamon',
  'Mugendramon',
  'Raguelmon',
  'Terriermon',
  'Sorcerimon',
  'Dracomon',
  'Otamamon',
  'Targetmon',
  'Boltmon',
  'Algomon (Ultimate)',
  'Petit Mamon',
  'Vamdemon',
  'Jyagamon',
  'Modoki Betamon',
  'Leviamon',
  'Hagurumon',
  'Deathmon (Black)',
  'Kunemon',
  'Rook Chessmon (Black)',
  'Sistermon Ciel',
  'Porcupamon',
  'Panimon',
  'Gryzmon',
  'Metal Greymon + Cyber Launcher',
  'Duramon',
  'Pyontomon',
  'Muso Knightmon',
  'Matadrmon',
  'Master Tyranomon',
  'Groundramon',
  'Airdramon',
  'Floramon',
  'Okuwamon',
  'Xuanwumon',
  'Yatagaramon',
  'Lavorvomon',
  'Black Rapidmon',
  'Crys Paledramon',
  'Arkadimon Ultimate',
  'Agumon (Black)',
  'Omekamon',
  'Gorimon',
  'Ice Devimon Daipenmon Enhancement Absorbent',
  'Minervamon (X-Antibody)',
  'Lucemon (X-Antibody)',
  'Shoutmon + Dorulu Cannon',
  'Catch Mamemon',
  'Trailmon Ball',
  'Lavogaritamon',
  'Magna Kidmon',
  'Deltamon',
  'Tobucatmon',
  'Tyutyumon',
  'Tunomon',
  'Potamon',
  'Ancient Mermaimon',
  'Ofanimon',
  'Heavy Leomon',
  'Venusmon',
  'XV-mon',
  'Whamon',
  'Gomamon (X-Antibody)',
  'Mad Leomon (Final Mode)',
  'JESmon (X-Antibody)',
  'Decker Greymon',
  'Impmon',
  'Imperialdramon(Fighter Mode (Black))',
  'Golemon (PS)',
  'Shoutmon (Blue)',
  'Upamon',
  'Metal Fantomon',
  'Firamon',
  'Paomon',
  'Death Meramon (C\'mon  Version)',
  'Hawkmon',
  'Shoutmon X2 Plus M',
  'Kangarumon',
  'Baalmon',
  'Xiaomon',
  'Hisyaryumon',
  'Toy Agumon',
  'Megalo Growmon (X-Antibody)',
  'Cardmon S2',
  'Pusurimon',
  'Bancho Leomon(Burst Mode)',
  'Raptor Sparrowmon',
  'Zeed Millenniumon',
  'Gigantic Pumpmon',
  'Coredramon (Green)',
  'Mikemon',
  'Dark Knightmon (Blastmon)',
  'Gaomon',
  'Gran Kuwagamon',
  'Crossmon',
  'Omedamon',
  'Agumon (X-Antibody)',
  'Golem Jiji Kamemon',
  'Mametyramon',
  'Hustle Nanimon',
  'Flymon',
  'Tankdramon',
  'Wezen Gammamon',
  'Hououmon',
  'Greymon O',
  'Jungle Mojyamon',
  'Rosemon',
  'Bosamon',
  'Opossummon',
  'Witchmon',
  'Skull Mammon',
  'Fladramon',
  'Chaos Greymon',
  'Mammon (X-Antibody)',
  'Ginkakumon',
  'Knight Chessmon (Black)',
  'Atlur Ballistamon',
  'Growmon (X-Antibody)',
  'Waru Seadramon',
  'Death-X-DORUguremon',
  'Bolgmon',
  'Pomumon',
  'Were Garurumon(Sagittarius Mode)',
  'Omegamon (X-Antibody)',
  'Nise Drimogemon',
  'Sakuyamon',
  'Grandis Kuwagamon Honey Mode',
  'Sirenmon',
  'Mervamon Wide Hi-Vision Sword',
  'Rare Raremon',
  'Pipimon',
  'Shortmon',
  'Peti Meramon',
  'Marin Devimon',
  'Seadramon (X-Antibody)',
  'Neo Vamdemon Darkness Mode (Metal Greymon)',
  'Kinkakumon',
  'Galgomon',
  'Lovely Angemon',
  'Negamon',
  'Luminamon',
  'Kyukanchoumon',
  'Paamon',
  'Scumon',
  'Swanmon',
  'Tobiumon',
  'Meicrackmon(Vicious Mode)',
  'Cardmon C2',
  'Alphamon',
  'Dukemon(Chaos Mode)',
  'Sandiramon',
  'Dark Volumon',
  'Imperialdramon(Fighter Mode)',
  'Megalo Growmon',
  'Rare Star Sword',
  'Dukemon',
  'Rukamon',
  'Hopmon',
  'Sealsdramon',
  'Cherubimon (Vice)',
  'Gokumon',
  'Grand Generamon',
  'Funbeemon',
  'Shoutmon (King Ver.)',
  'Lamortmon',
  'Meicoomon',
  'Bancho Lilimon',
  'Umon',
  'Pile Volcamon',
  'Aegiomon',
  'Kuzuhamon(Miko Mode)',
  'Gokimon',
  'Jewelbeemon',
  'Deadly Tuwarmon Hell Mode',
  'Ice Devimon',
  'Komondomon',
  'Nefertimon',
  'Swimmon',
  'Ulforce V-dramon (X-Antibody)',
  'Ancient Volcamon',
  'Indaramon',
  'Bakumon',
  'Death Devimon',
  'Palmon (X-Antibody)',
  'Kazuchimon',
  'Lucemon(Larva)',
  'Ginkakumon Promote',
  'Gummymon',
  'DORUguremon',
  'Yukidarumon',
  'Jazardmon',
  'Black Guilmon',
  'Rinkmon',
  'Fugamon',
  'Ancient Irismon',
  'Pegasmon',
  'Deathmon (C\'mon  Version)',
  'Blitz Greymon',
  'Trailmon Angler',
  'Andiramon',
  'Achillesmon',
  'Boogiemon',
  'Ouryumon',
  'Sleipmon',
  'Mamemon',
  'Kokabuterimon',
  'Wendimon',
  'Mervamon',
  'Divemon',
  'Piemon',
  'Mail Birdramon + Golemon',
  'Magnamon (X-Antibody)',
  'Giga Waru Monzaemon',
  'Pure Skull Knightmon',
  'Shonitamon',
  'Mermaimon',
  'EBEmon (X-Antibody)',
  'Gabumon (X-Antibody)',
  'Raiji Ludomon',
  'Rosemon (X-Antibody)',
  'Impmon (X-Antibody)',
  'Kyokyomon',
  'Bushi Agumon',
  'Chibimon',
  'Kougamon',
  'Pistmon',
  'Leafmon',
  'Jazarichmon',
  'Shoutmon X2',
  'Anubimon',
  'Flamon',
  'War Greymon',
  'Gold Numemon (Ultimate)',
  'Ketomon',
  'Neo Vamdemon Darkness Mode (Shoutmon)',
  'Chapmon',
  'Dot Lalamon',
];
