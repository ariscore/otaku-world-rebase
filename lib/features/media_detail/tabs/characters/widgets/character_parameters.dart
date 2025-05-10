class CharacterParameters {
  final String imageUrl;
  final String characterName;
  final String characterRole;
  final int characterId;
  final void Function() onTap;

  CharacterParameters({
    required this.imageUrl,
    required this.characterName,
    required this.characterRole,
    required this.characterId,
    required this.onTap,
  });
}
