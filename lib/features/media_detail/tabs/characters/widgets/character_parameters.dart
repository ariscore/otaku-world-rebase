class CharacterParameters {
  final String imageUrl;
  final String characterName;
  final String characterRole;
  final int characterId;
  final void Function() onTap;
  final bool isManga;

  CharacterParameters({
    required this.imageUrl,
    required this.characterName,
    required this.characterRole,
    required this.characterId,
    required this.onTap,
    this.isManga = false,
  });
}
