import 'models/Exercise.dart';

// TODO: localizzare ed inserire i valori stringhe in un file dedicato

Exercise affondi = new Exercise(
    name: 'Affondi',
    description:
        "In posizione eretta, con i piedi aperti alla larghezza delle spalle e le mani sui fianchi, fare un grosso passo indietro con una gamba e abbassarsi fino a portare la coscia dell'altra parallela al terreno.\nRisalire e ripetere con l'altro lato.",
    videoAsset: 'assets/videos/affondi.mp4',
    thumbnailAsset: 'assets/videos/thumbnails/affondi.jpg',
    firstFrame: 'assets/videos/firstFrames/affondi.jpg');
Exercise squat = new Exercise(
    name: 'Squat',
    description:
        "In posizione eretta, con i piedi allineati alla larghezza delle spalle e le braccia allungate in avanti, abbassarsi fino ad avere le cosce parallele al terreno. Le ginocchia dovrebbero avanzare in linea con la punta dei piedi. Tornare alla posizione di partenza e ripetere l'esercizio.\nMuscoli coinvolti: cosce, anche, glutei, quadricipiti, ischiocrurali e zona lombare.",
    videoAsset: 'assets/videos/squat.mp4',
    thumbnailAsset: 'assets/videos/thumbnails/squat.jpg',
    firstFrame: 'assets/videos/firstFrames/squat.jpg');
Exercise plank = new Exercise(
    name: 'Plank',
    description:
        "Inizia in una posizione push-up con il peso del corpo pressato su avambracci, gomiti, mani e piedi.\nIl plank rafforza gli addominali, la schiena e le spalle.",
    videoAsset: 'assets/videos/plank.mp4',
    thumbnailAsset: 'assets/videos/thumbnails/plank.jpg',
    firstFrame: 'assets/videos/firstFrames/plank.jpg');
Exercise piegamenti = new Exercise(
    name: 'Piegamenti',
    description:
        "Assumi la posizione dei piegamenti classici, ma con le mani appoggiate su una sedia o su una panca.\nEsegui dei piegamenti usando la forza delle braccia. Ricorda che il busto deve essere mantenuto in linea retta",
    videoAsset: 'assets/videos/piegamenti.mp4',
    thumbnailAsset: 'assets/videos/thumbnails/piegamenti.jpg',
    firstFrame: 'assets/videos/firstFrames/piegamenti.jpg');
Exercise dipsPancia = new Exercise(
    name: 'Dips su Pancia',
    description:
        "Siediti su una panca. Allontana i fianchi dalla sedia, appoggiando le mani su di essa per sostenere il tuo corpo.\nMantieni la schiena vicino alla sedia, piega i gomiti e cercare di scendere a 90 gradi.\nQuesto è un ottimo esercizio per i tricipiti.",
    videoAsset: 'assets/videos/dipsPancia.mp4',
    thumbnailAsset: 'assets/videos/thumbnails/dipsPancia.jpg',
    firstFrame: 'assets/videos/firstFrames/dipsPancia.jpg');
Exercise slanciLaterali = new Exercise(
    name: 'Slanci Laterali',
    description:
        "In posizione eretta, con una o entrambe le mani appoggiate ad un supporto, sollevare lateralmente una gamba e slanciarla nella direzione opposta mantenendola in leggera flessione, tornare alla posizione di partenza e ripetere più volte cambiando lato.\nE' un esercizio che interessa ed isola il gluteo.\nViene sollecitato come muscolo secondario il femorale.",
    videoAsset: 'assets/videos/slanciLaterali.mp4',
    thumbnailAsset: 'assets/videos/thumbnails/slanciLaterali.jpg',
    firstFrame: 'assets/videos/firstFrames/slanciLaterali.jpg');
Exercise slanciFrontali = new Exercise(
    name: 'Slanci Frontali',
    description:
        "In posizione eretta con una mano appoggiata al muro o ad un asta, slanciare la gamba interna. Successivamente invertire la gamba e il braccio.\nQuesto esercizio tonifica il gluteo.\nNello svolgimento del movimento viene sollecitato anche il femorale come muscolo secondario.",
    videoAsset: 'assets/videos/slanciFrontali.mp4',
    thumbnailAsset: 'assets/videos/thumbnails/slanciFrontali.jpg',
    firstFrame: 'assets/videos/firstFrames/slanciFrontali.jpg');

final List exercises = [
  affondi,
  squat,
  plank,
  piegamenti,
  dipsPancia,
  slanciLaterali,
  slanciFrontali
];
