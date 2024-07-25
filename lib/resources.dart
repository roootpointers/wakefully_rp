class Resources {
  static Icons get icons => const Icons();
  static Images get images => const Images();
  static Urls get urls => const Urls();
  static Videos get videos => const Videos();
}

class Icons {
  const Icons();
  String get email => "assets/icons/email.svg";
  String get password => "assets/icons/password.svg";
  String get person => "assets/icons/person.svg";
  String get dreams => "assets/icons/dreams.svg";
  String get dreamsSelected => "assets/icons/dreams_selected.svg";
  String get profile => "assets/icons/profile.svg";
  String get profileSelected => "assets/icons/profile_selected.svg";
  String get arrowRight => "assets/icons/arrow_right.svg";
  String get arrowDown => "assets/icons/arrow_down.svg";
  String get lock => "assets/icons/lock.svg";
  String get share => "assets/icons/share.svg";
  String get stop => "assets/icons/stop.svg";
  String get microphone => "assets/icons/microphone.svg";
  String get keyboard => "assets/icons/keyboard.svg";
  String get send => "assets/icons/send.svg";
  String get delete => "assets/icons/delete.svg";
  String get edit => "assets/icons/edit.svg";
  String get check => "assets/icons/check.svg";
  String get close => "assets/icons/close.svg";
  String get chevronLeft => "assets/icons/chevron_left.svg";
  String get home => "assets/icons/home.svg";
  String get homeSelected => "assets/icons/home_selected.svg";
  String get cog => "assets/icons/cog.svg";
  String get addCloud => "assets/icons/add_cloud.svg";
  String get searchCloud => "assets/icons/search_cloud.svg";
  String get cloud => "assets/icons/cloud.svg";
  String get cloudLightning => "assets/icons/cloud_lightning.svg";
  String get cloudRain => "assets/icons/cloud_rain.svg";
  String get cloudEyes => "assets/icons/cloud_eyes.svg";
}

class Images {
  const Images();
  String get logo => "assets/images/logo.png";
  String get logoSvg => "assets/images/logo_svg.svg";
  String get goldenBlob => "assets/images/golden_blob.svg";
  String get dreamJourney => "assets/images/dream_journey.svg";
  String get emptyDreams => "assets/images/empty_dreams.svg";
  String get warningBlob => "assets/images/warning_blob.png";
  String get crown => "assets/images/crown.svg";
  String get warningBlobYellow => "assets/images/warning_blob_yellow.svg";
  String get cloudAdd => "assets/images/cloud_add.svg";
  String get cloudDots => "assets/images/cloud_dots.svg";
}

class Videos {
  const Videos();

  String get aiThinking => "assets/videos/ai_thinking.mp4";
  String get onboarding => "assets/videos/onboarding.mp4";
}

class Urls {
  const Urls();

  String get siteUrl => 'https://wakefully.io/';
  String get privacyPolicy => 'https://wakefully.io/privacy-policy';
  String get termsAndConditions => 'https://wakefully.io/terms-and-conditions';
}
