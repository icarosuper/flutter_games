class AddedByStatus {
  final int? yet;
  final int? owned;
  final int? beaten;
  final int? toPlay;
  final int? dropped;
  final int? playing;

  AddedByStatus({
    this.yet,
    this.owned,
    this.beaten,
    this.toPlay,
    this.dropped,
    this.playing,
  });

  factory AddedByStatus.fromJson(Map<String, dynamic> json) {
    return AddedByStatus(
      yet: json['yet'],
      owned: json['owned'],
      beaten: json['beaten'],
      toPlay: json['toPlay'],
      dropped: json['dropped'],
      playing: json['playing'],
    );
  }
}
