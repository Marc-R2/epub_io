import 'dart:io';

import 'package:test/test.dart';

import 'ensure_downloaded.dart';

void main() {
  final download = EnsureDownloaded(
    dir: Directory('test/res/standardebooks_org'),
    source: 'https://standardebooks.org/ebooks/',
  );

  group('standardebooks_org', () {
    // https://standardebooks.org/ebooks/anna-katharine-green/the-leavenworth-case
    download.section('anna-katharine-green/the-leavenworth-case/downloads/')
      // https://standardebooks.org/ebooks/anna-katharine-green/the-leavenworth-case/downloads/anna-katharine-green_the-leavenworth-case.epub
      ..testFile('anna-katharine-green_the-leavenworth-case.epub')
      // https://standardebooks.org/ebooks/anna-katharine-green/the-leavenworth-case/downloads/anna-katharine-green_the-leavenworth-case_advanced.epub
      ..testFile('anna-katharine-green_the-leavenworth-case_advanced.epub');

    // https://standardebooks.org/ebooks/mary-parker-follett/the-new-state
    download.section('mary-parker-follett/the-new-state/downloads/')
      // https://standardebooks.org/ebooks/mary-parker-follett/the-new-state/downloads/mary-parker-follett_the-new-state.epub
      ..testFile('mary-parker-follett_the-new-state.epub')
      // https://standardebooks.org/ebooks/mary-parker-follett/the-new-state/downloads/mary-parker-follett_the-new-state_advanced.epub
      ..testFile('mary-parker-follett_the-new-state_advanced.epub');

    // https://standardebooks.org/ebooks/lord-byron/don-juan
    download.section('lord-byron/don-juan/downloads/')
      // https://standardebooks.org/ebooks/lord-byron/don-juan/downloads/lord-byron_don-juan.epub
      ..testFile('lord-byron_don-juan.epub')
      // https://standardebooks.org/ebooks/lord-byron/don-juan/downloads/lord-byron_don-juan_advanced.epub
      ..testFile('lord-byron_don-juan_advanced.epub');

    // https://standardebooks.org/ebooks/charles-dickens/a-christmas-carol
    download.section('charles-dickens/a-christmas-carol/downloads/')
      // https://standardebooks.org/ebooks/charles-dickens/a-christmas-carol/downloads/charles-dickens_a-christmas-carol.epub
      ..testFile('charles-dickens_a-christmas-carol.epub')
      // https://standardebooks.org/ebooks/charles-dickens/a-christmas-carol/downloads/charles-dickens_a-christmas-carol_advanced.epub
      ..testFile('charles-dickens_a-christmas-carol_advanced.epub');

    // https://standardebooks.org/ebooks/m-e-braddon/the-cloven-foot
    download.section('m-e-braddon/the-cloven-foot/downloads/')
      // https://standardebooks.org/ebooks/m-e-braddon/the-cloven-foot/downloads/m-e-braddon_the-cloven-foot.epub
      ..testFile('m-e-braddon_the-cloven-foot.epub')
      // https://standardebooks.org/ebooks/m-e-braddon/the-cloven-foot/downloads/m-e-braddon_the-cloven-foot_advanced.epub
      ..testFile('m-e-braddon_the-cloven-foot_advanced.epub');

    // https://standardebooks.org/ebooks/h-p-lovecraft/the-case-of-charles-dexter-ward
    download.section('h-p-lovecraft/the-case-of-charles-dexter-ward/downloads/')
      // https://standardebooks.org/ebooks/h-p-lovecraft/the-case-of-charles-dexter-ward/downloads/h-p-lovecraft_the-case-of-charles-dexter-ward.epub
      ..testFile('h-p-lovecraft_the-case-of-charles-dexter-ward.epub')
      // https://standardebooks.org/ebooks/h-p-lovecraft/the-case-of-charles-dexter-ward/downloads/h-p-lovecraft_the-case-of-charles-dexter-ward_advanced.epub
      ..testFile('h-p-lovecraft_the-case-of-charles-dexter-ward_advanced.epub');

    // https://standardebooks.org/ebooks/h-de-vere-stacpoole/the-blue-lagoon
    download.section('h-de-vere-stacpoole/the-blue-lagoon/downloads/')
      // https://standardebooks.org/ebooks/h-de-vere-stacpoole/the-blue-lagoon/downloads/h-de-vere-stacpoole_the-blue-lagoon.epub
      ..testFile('h-de-vere-stacpoole_the-blue-lagoon.epub')
      // https://standardebooks.org/ebooks/h-de-vere-stacpoole/the-blue-lagoon/downloads/h-de-vere-stacpoole_the-blue-lagoon_advanced.epub
      ..testFile('h-de-vere-stacpoole_the-blue-lagoon_advanced.epub');

    // https://standardebooks.org/ebooks/walter-m-miller-jr/short-fiction
    download.section('walter-m-miller-jr/short-fiction/downloads/')
      // https://standardebooks.org/ebooks/walter-m-miller-jr/short-fiction/downloads/walter-m-miller-jr_short-fiction.epub
      ..testFile('walter-m-miller-jr_short-fiction.epub')
      // https://standardebooks.org/ebooks/walter-m-miller-jr/short-fiction/downloads/walter-m-miller-jr_short-fiction_advanced.epub
      ..testFile('walter-m-miller-jr_short-fiction_advanced.epub');

    // https://standardebooks.org/ebooks/george-bernard-shaw/mrs-warrens-profession
    download.section('george-bernard-shaw/mrs-warrens-profession/downloads/')
      // https://standardebooks.org/ebooks/george-bernard-shaw/mrs-warrens-profession/downloads/george-bernard-shaw_mrs-warrens-profession.epub
      ..testFile('george-bernard-shaw_mrs-warrens-profession.epub')
      // https://standardebooks.org/ebooks/george-bernard-shaw/mrs-warrens-profession/downloads/george-bernard-shaw_mrs-warrens-profession_advanced.epub
      ..testFile('george-bernard-shaw_mrs-warrens-profession_advanced.epub');

    // https://standardebooks.org/ebooks/anna-julia-cooper/a-voice-from-the-south
    download.section('anna-julia-cooper/a-voice-from-the-south/downloads/')
      // https://standardebooks.org/ebooks/anna-julia-cooper/a-voice-from-the-south/downloads/anna-julia-cooper_a-voice-from-the-south.epub
      ..testFile('anna-julia-cooper_a-voice-from-the-south.epub')
      // https://standardebooks.org/ebooks/anna-julia-cooper/a-voice-from-the-south/downloads/anna-julia-cooper_a-voice-from-the-south_advanced.epub
      ..testFile('anna-julia-cooper_a-voice-from-the-south_advanced.epub');

    // https://standardebooks.org/ebooks/henry-blake-fuller/bertram-copes-year
    download.section('henry-blake-fuller/bertram-copes-year/downloads/')
      // https://standardebooks.org/ebooks/henry-blake-fuller/bertram-copes-year/downloads/henry-blake-fuller_bertram-copes-year.epub
      ..testFile('henry-blake-fuller_bertram-copes-year.epub')
      // https://standardebooks.org/ebooks/henry-blake-fuller/bertram-copes-year/downloads/henry-blake-fuller_bertram-copes-year_advanced.epub
      ..testFile('henry-blake-fuller_bertram-copes-year_advanced.epub');

    // https://standardebooks.org/ebooks/tanizaki-junichiro/short-fiction/iwado-z-tamotsu
    download
        .section('tanizaki-junichiro/short-fiction/iwado-z-tamotsu/downloads/')
      // https://standardebooks.org/ebooks/tanizaki-junichiro/short-fiction/iwado-z-tamotsu/downloads/tanizaki-junichiro_short-fiction_iwado-z-tamotsu.epub
      ..testFile('tanizaki-junichiro_short-fiction_iwado-z-tamotsu.epub')
      // https://standardebooks.org/ebooks/tanizaki-junichiro/short-fiction/iwado-z-tamotsu/downloads/tanizaki-junichiro_short-fiction_iwado-z-tamotsu_advanced.epub
      ..testFile(
        'tanizaki-junichiro_short-fiction_iwado-z-tamotsu_advanced.epub',
      );

    // https://standardebooks.org/ebooks/honore-de-balzac/a-start-in-life/clara-bell
    download.section('honore-de-balzac/a-start-in-life/clara-bell/downloads/')
      // https://standardebooks.org/ebooks/honore-de-balzac/a-start-in-life/clara-bell/downloads/honore-de-balzac_a-start-in-life_clara-bell.epub
      ..testFile('honore-de-balzac_a-start-in-life_clara-bell.epub')
      // https://standardebooks.org/ebooks/honore-de-balzac/a-start-in-life/clara-bell/downloads/honore-de-balzac_a-start-in-life_clara-bell_advanced.epub
      ..testFile('honore-de-balzac_a-start-in-life_clara-bell_advanced.epub');

    // https://standardebooks.org/ebooks/herodotus/histories/g-c-macaulay
    download.section('herodotus/histories/g-c-macaulay/downloads/')
      // https://standardebooks.org/ebooks/herodotus/histories/g-c-macaulay/downloads/herodotus_histories_g-c-macaulay.epub
      ..testFile('herodotus_histories_g-c-macaulay.epub')
      // https://standardebooks.org/ebooks/herodotus/histories/g-c-macaulay/downloads/herodotus_histories_g-c-macaulay_advanced.epub
      ..testFile('herodotus_histories_g-c-macaulay_advanced.epub');

    // https://standardebooks.org/ebooks/cordwainer-smith/short-fiction
    download.section('cordwainer-smith/short-fiction/downloads/')
      // https://standardebooks.org/ebooks/cordwainer-smith/short-fiction/downloads/cordwainer-smith_short-fiction.epub
      ..testFile('cordwainer-smith_short-fiction.epub')
      // https://standardebooks.org/ebooks/cordwainer-smith/short-fiction/downloads/cordwainer-smith_short-fiction_advanced.epub
      ..testFile('cordwainer-smith_short-fiction_advanced.epub');

    // https://standardebooks.org/ebooks/james-joyce/exiles
    download.section('james-joyce/exiles/downloads/')
      // https://standardebooks.org/ebooks/james-joyce/exiles/downloads/james-joyce_exiles.epub
      ..testFile('james-joyce_exiles.epub')
      // https://standardebooks.org/ebooks/james-joyce/exiles/downloads/james-joyce_exiles_advanced.epub
      ..testFile('james-joyce_exiles_advanced.epub');

    // https://standardebooks.org/ebooks/p-g-wodehouse/the-coming-of-bill
    download.section('p-g-wodehouse/the-coming-of-bill/downloads/')
      // https://standardebooks.org/ebooks/p-g-wodehouse/the-coming-of-bill/downloads/p-g-wodehouse_the-coming-of-bill.epub
      ..testFile('p-g-wodehouse_the-coming-of-bill.epub')
      // https://standardebooks.org/ebooks/p-g-wodehouse/the-coming-of-bill/downloads/p-g-wodehouse_the-coming-of-bill_advanced.epub
      ..testFile('p-g-wodehouse_the-coming-of-bill_advanced.epub');

    // https://standardebooks.org/ebooks/m-e-braddon/aurora-floyd
    download.section('m-e-braddon/aurora-floyd/downloads/')
      // https://standardebooks.org/ebooks/m-e-braddon/aurora-floyd/downloads/m-e-braddon_aurora-floyd.epub
      ..testFile('m-e-braddon_aurora-floyd.epub')
      // https://standardebooks.org/ebooks/m-e-braddon/aurora-floyd/downloads/m-e-braddon_aurora-floyd_advanced.epub
      ..testFile('m-e-braddon_aurora-floyd_advanced.epub');

    // https://standardebooks.org/ebooks/robert-derby-holmes/a-yankee-in-the-trenches
    download.section('robert-derby-holmes/a-yankee-in-the-trenches/downloads/')
      // https://standardebooks.org/ebooks/robert-derby-holmes/a-yankee-in-the-trenches/downloads/robert-derby-holmes_a-yankee-in-the-trenches.epub
      ..testFile('robert-derby-holmes_a-yankee-in-the-trenches.epub')
      // https://standardebooks.org/ebooks/robert-derby-holmes/a-yankee-in-the-trenches/downloads/robert-derby-holmes_a-yankee-in-the-trenches_advanced.epub
      ..testFile('robert-derby-holmes_a-yankee-in-the-trenches_advanced.epub');

    // https://standardebooks.org/ebooks/j-sheridan-le-fanu/the-wyvern-mystery
    download.section('j-sheridan-le-fanu/the-wyvern-mystery/downloads/')
      // https://standardebooks.org/ebooks/j-sheridan-le-fanu/the-wyvern-mystery/downloads/j-sheridan-le-fanu_the-wyvern-mystery.epub
      ..testFile('j-sheridan-le-fanu_the-wyvern-mystery.epub')
      // https://standardebooks.org/ebooks/j-sheridan-le-fanu/the-wyvern-mystery/downloads/j-sheridan-le-fanu_the-wyvern-mystery_advanced.epub
      ..testFile('j-sheridan-le-fanu_the-wyvern-mystery_advanced.epub');

    // https://standardebooks.org/ebooks/abu-al-ala-al-maarri/the-luzumiyat/ameen-rihani
    download
        .section('abu-al-ala-al-maarri/the-luzumiyat/ameen-rihani/downloads/')
      // https://standardebooks.org/ebooks/abu-al-ala-al-maarri/the-luzumiyat/ameen-rihani/downloads/abu-al-ala-al-maarri_the-luzumiyat_ameen-rihani.epub
      ..testFile('abu-al-ala-al-maarri_the-luzumiyat_ameen-rihani.epub')
      // https://standardebooks.org/ebooks/abu-al-ala-al-maarri/the-luzumiyat/ameen-rihani/downloads/abu-al-ala-al-maarri_the-luzumiyat_ameen-rihani_advanced.epub
      ..testFile(
        'abu-al-ala-al-maarri_the-luzumiyat_ameen-rihani_advanced.epub',
      );

    // https://standardebooks.org/ebooks/felix-salten/bambi/whittaker-chambers
    download.section('felix-salten/bambi/whittaker-chambers/downloads/')
      // https://standardebooks.org/ebooks/felix-salten/bambi/whittaker-chambers/downloads/felix-salten_bambi_whittaker-chambers.epub
      ..testFile('felix-salten_bambi_whittaker-chambers.epub')
      // https://standardebooks.org/ebooks/felix-salten/bambi/whittaker-chambers/downloads/felix-salten_bambi_whittaker-chambers_advanced.epub
      ..testFile('felix-salten_bambi_whittaker-chambers_advanced.epub');

    // https://standardebooks.org/ebooks/natsume-soseki/kusamakura/takahashi-kazutomo
    download.section('natsume-soseki/kusamakura/takahashi-kazutomo/downloads/')
      // https://standardebooks.org/ebooks/natsume-soseki/kusamakura/takahashi-kazutomo/downloads/natsume-soseki_kusamakura_takahashi-kazutomo.epub
      ..testFile('natsume-soseki_kusamakura_takahashi-kazutomo.epub')
      // https://standardebooks.org/ebooks/natsume-soseki/kusamakura/takahashi-kazutomo/downloads/natsume-soseki_kusamakura_takahashi-kazutomo_advanced.epub
      ..testFile('natsume-soseki_kusamakura_takahashi-kazutomo_advanced.epub');

    // https://standardebooks.org/ebooks/l-frank-baum/ozma-of-oz
    download.section('l-frank-baum/ozma-of-oz/downloads/')
      // https://standardebooks.org/ebooks/l-frank-baum/ozma-of-oz/downloads/l-frank-baum_ozma-of-oz.epub
      ..testFile('l-frank-baum_ozma-of-oz.epub')
      // https://standardebooks.org/ebooks/l-frank-baum/ozma-of-oz/downloads/l-frank-baum_ozma-of-oz_advanced.epub
      ..testFile('l-frank-baum_ozma-of-oz_advanced.epub');

    // https://standardebooks.org/ebooks/james-joyce/ulysses
    download.section('james-joyce/ulysses/downloads/')
      // https://standardebooks.org/ebooks/james-joyce/ulysses/downloads/james-joyce_ulysses.epub
      ..testFile('james-joyce_ulysses.epub')
      // https://standardebooks.org/ebooks/james-joyce/ulysses/downloads/james-joyce_ulysses_advanced.epub
      ..testFile('james-joyce_ulysses_advanced.epub');

    // https://standardebooks.org/ebooks/radclyffe-hall/the-well-of-loneliness
    download.section('radclyffe-hall/the-well-of-loneliness/downloads/')
      // https://standardebooks.org/ebooks/radclyffe-hall/the-well-of-loneliness/downloads/radclyffe-hall_the-well-of-loneliness.epub
      ..testFile('radclyffe-hall_the-well-of-loneliness.epub')
      // https://standardebooks.org/ebooks/radclyffe-hall/the-well-of-loneliness/downloads/radclyffe-hall_the-well-of-loneliness_advanced.epub
      ..testFile('radclyffe-hall_the-well-of-loneliness_advanced.epub');

    // https://standardebooks.org/ebooks/apollonius-of-rhodes/the-argonautica/arthur-s-way
    download
        .section('apollonius-of-rhodes/the-argonautica/arthur-s-way/downloads/')
      // https://standardebooks.org/ebooks/apollonius-of-rhodes/the-argonautica/arthur-s-way/downloads/apollonius-of-rhodes_the-argonautica_arthur-s-way.epub
      ..testFile('apollonius-of-rhodes_the-argonautica_arthur-s-way.epub')
      // https://standardebooks.org/ebooks/apollonius-of-rhodes/the-argonautica/arthur-s-way/downloads/apollonius-of-rhodes_the-argonautica_arthur-s-way_advanced.epub
      ..testFile(
        'apollonius-of-rhodes_the-argonautica_arthur-s-way_advanced.epub',
      );

    // https://standardebooks.org/ebooks/noel-coward/the-vortex
    download.section('noel-coward/the-vortex/downloads/')
      // https://standardebooks.org/ebooks/noel-coward/the-vortex/downloads/noel-coward_the-vortex.epub
      ..testFile('noel-coward_the-vortex.epub')
      // https://standardebooks.org/ebooks/noel-coward/the-vortex/downloads/noel-coward_the-vortex_advanced.epub
      ..testFile('noel-coward_the-vortex_advanced.epub');

    // https://standardebooks.org/ebooks/bertha-von-suttner/lay-down-your-arms/t-holmes
    download
        .section('bertha-von-suttner/lay-down-your-arms/t-holmes/downloads/')
      // https://standardebooks.org/ebooks/bertha-von-suttner/lay-down-your-arms/t-holmes/downloads/bertha-von-suttner_lay-down-your-arms_t-holmes.epub
      ..testFile('bertha-von-suttner_lay-down-your-arms_t-holmes.epub')
      // https://standardebooks.org/ebooks/bertha-von-suttner/lay-down-your-arms/t-holmes/downloads/bertha-von-suttner_lay-down-your-arms_t-holmes_advanced.epub
      ..testFile(
        'bertha-von-suttner_lay-down-your-arms_t-holmes_advanced.epub',
      );

    // https://standardebooks.org/ebooks/john-g-neihardt/a-cycle-of-the-west
    download.section('john-g-neihardt/a-cycle-of-the-west/downloads/')
      // https://standardebooks.org/ebooks/john-g-neihardt/a-cycle-of-the-west/downloads/john-g-neihardt_a-cycle-of-the-west.epub
      ..testFile('john-g-neihardt_a-cycle-of-the-west.epub')
      // https://standardebooks.org/ebooks/john-g-neihardt/a-cycle-of-the-west/downloads/john-g-neihardt_a-cycle-of-the-west_advanced.epub
      ..testFile('john-g-neihardt_a-cycle-of-the-west_advanced.epub');

    // https://standardebooks.org/ebooks/ivy-compton-burnett/pastors-and-masters
    download.section('ivy-compton-burnett/pastors-and-masters/downloads/')
      // https://standardebooks.org/ebooks/ivy-compton-burnett/pastors-and-masters/downloads/ivy-compton-burnett_pastors-and-masters.epub
      ..testFile('ivy-compton-burnett_pastors-and-masters.epub')
      // https://standardebooks.org/ebooks/ivy-compton-burnett/pastors-and-masters/downloads/ivy-compton-burnett_pastors-and-masters_advanced.epub
      ..testFile('ivy-compton-burnett_pastors-and-masters_advanced.epub');

    // https://standardebooks.org/ebooks/theodore-dreiser/the-financier
    download.section('theodore-dreiser/the-financier/downloads/')
      // https://standardebooks.org/ebooks/theodore-dreiser/the-financier/downloads/theodore-dreiser_the-financier.epub
      ..testFile('theodore-dreiser_the-financier.epub')
      // https://standardebooks.org/ebooks/theodore-dreiser/the-financier/downloads/theodore-dreiser_the-financier_advanced.epub
      ..testFile('theodore-dreiser_the-financier_advanced.epub');

    // https://standardebooks.org/ebooks/g-k-chesterton/the-everlasting-man
    download.section('g-k-chesterton/the-everlasting-man/downloads/')
      // https://standardebooks.org/ebooks/g-k-chesterton/the-everlasting-man/downloads/g-k-chesterton_the-everlasting-man.epub
      ..testFile('g-k-chesterton_the-everlasting-man.epub')
      // https://standardebooks.org/ebooks/g-k-chesterton/the-everlasting-man/downloads/g-k-chesterton_the-everlasting-man_advanced.epub
      ..testFile('g-k-chesterton_the-everlasting-man_advanced.epub');

    // https://standardebooks.org/ebooks/peter-kropotkin/memoirs-of-a-revolutionist
    download.section('peter-kropotkin/memoirs-of-a-revolutionist/downloads/')
      // https://standardebooks.org/ebooks/peter-kropotkin/memoirs-of-a-revolutionist/downloads/peter-kropotkin_memoirs-of-a-revolutionist.epub
      ..testFile('peter-kropotkin_memoirs-of-a-revolutionist.epub')
      // https://standardebooks.org/ebooks/peter-kropotkin/memoirs-of-a-revolutionist/downloads/peter-kropotkin_memoirs-of-a-revolutionist_advanced.epub
      ..testFile('peter-kropotkin_memoirs-of-a-revolutionist_advanced.epub');

    // https://standardebooks.org/ebooks/l-m-montgomery/anne-of-the-island
    download.section('l-m-montgomery/anne-of-the-island/downloads/')
      // https://standardebooks.org/ebooks/l-m-montgomery/anne-of-the-island/downloads/l-m-montgomery_anne-of-the-island.epub
      ..testFile('l-m-montgomery_anne-of-the-island.epub')
      // https://standardebooks.org/ebooks/l-m-montgomery/anne-of-the-island/downloads/l-m-montgomery_anne-of-the-island_advanced.epub
      ..testFile('l-m-montgomery_anne-of-the-island_advanced.epub');

    // https://standardebooks.org/ebooks/h-g-wells/the-food-of-the-gods
    download.section('h-g-wells/the-food-of-the-gods/downloads/')
      // https://standardebooks.org/ebooks/h-g-wells/the-food-of-the-gods/downloads/h-g-wells_the-food-of-the-gods.epub
      ..testFile('h-g-wells_the-food-of-the-gods.epub')
      // https://standardebooks.org/ebooks/h-g-wells/the-food-of-the-gods/downloads/h-g-wells_the-food-of-the-gods_advanced.epub
      ..testFile('h-g-wells_the-food-of-the-gods_advanced.epub');
  });
}
