class OnboardingContent {
  final String image;

  final String title;

  final String desc;

  OnboardingContent(
      {required this.image, required this.title, required this.desc});
}

List<OnboardingContent> content = [
  OnboardingContent(
      image: "assets/images/Shared workspace-amico (1) 1.svg",
      title: "Your favorite place to work",
      desc:
          "In Shaghaf Co-working space, we provide a place that makes you more productive, enjoyable and comfortable A place made up of different parts"),
  OnboardingContent(
      image: "assets/images/Game day-amico 22.svg",
      title: "Delightful open air",
      desc:
          "You can choose a game to play from the many games we have , sit at a comfortable base,"
          " or take pictures in the different places"
          " that have been specially made to take beautiful pictures."),
  OnboardingContent(
      image: "assets/images/Prototyping process-amico (1) 1.svg",
      title: "Choose your favorite room",
      desc: "You can find the right room"
          " for your current mood,"
          " as we have many rooms that meet all needs,"
          " You can move between funny room, training room and meeting room")
];
