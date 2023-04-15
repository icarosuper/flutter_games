import 'package:flutter_games/domain/entities/added_by_status.dart';
import 'package:flutter_games/domain/entities/esrb_rating.dart';
import 'package:flutter_games/domain/entities/game_platform.dart';
import 'package:flutter_games/domain/entities/genre.dart';
import 'package:flutter_games/domain/entities/parent_platform.dart';
import 'package:flutter_games/domain/entities/rating.dart';
import 'package:flutter_games/domain/entities/short_screenshot.dart';
import 'package:flutter_games/domain/entities/tag.dart';

class Game {
  final double rating;
  final int? id;
  final String? slug;
  final String? name;
  final DateTime? released;
  final bool? toBeAnnounced;
  final String? backgroundImage;
  final int? ratingTop;
  final int? ratingsCount;
  final int? reviewsTextCount;
  final int? added;
  final int? metacritic;
  final int? playTime;
  final int? suggestionsCount;
  final DateTime? updated;
  final int? reviewsCount;
  final String? saturatedColor;
  final String? dominantColor;
  final Iterable<Rating>? ratings;
  final AddedByStatus? addedByStatus;
  final List<GamePlatform>? platforms;
  final List<ParentPlatform>? parentPlatforms;
  final List<Genre>? genres;
  final List<Tag>? tags;
  final EsrbRating? esrbRating;
  final List<ShortScreenshot>? shortScreenshots;

  Game({
    required this.rating,
    this.id,
    this.slug,
    this.name,
    this.released,
    this.toBeAnnounced,
    this.backgroundImage,
    this.ratingsCount,
    this.metacritic,
    this.updated,
    this.reviewsCount,
    this.playTime,
    this.ratingTop,
    this.added,
    this.dominantColor,
    this.reviewsTextCount,
    this.saturatedColor,
    this.suggestionsCount,
    this.ratings,
    this.addedByStatus,
    this.platforms,
    this.parentPlatforms,
    this.genres,
    this.tags,
    this.esrbRating,
    this.shortScreenshots,
  });

  factory Game.fromJson(Map<String, dynamic> json) {
    return Game(
      rating: json['rating'],
      id: json['id'],
      slug: json['slug'],
      name: json['name'],
      released: DateTime.tryParse(json['released']),
      toBeAnnounced: json['tba'],
      backgroundImage: json['background_image'],
      ratingsCount: json['ratings_count'],
      metacritic: json['metacritic'],
      updated: DateTime.tryParse(json['updated']),
      reviewsCount: json['reviews_count'],
      added: json['added'],
      playTime: json['playtime'],
      ratingTop: json['rating_top'],
      reviewsTextCount: json['reviews_text_count'],
      suggestionsCount: json['suggestions_count'],
      dominantColor: json['dominant_color'],
      saturatedColor: json['saturated_color'],
      esrbRating: json['esrb_rating'] != null
          ? EsrbRating.fromJson(json['esrb_rating'])
          : null,
      addedByStatus: json['added_by_status'] != null
          ? AddedByStatus.fromJson(json['added_by_status'])
          : null,
      ratings: List<Rating>.from(
          json['ratings'].map((rating) => Rating.fromJson(rating))),
      platforms: List<GamePlatform>.from(
          json['platforms'].map((platform) => GamePlatform.fromJson(platform))),
      parentPlatforms: List<ParentPlatform>.from(json['parent_platforms']
          .map((platform) => ParentPlatform.fromJson(platform))),
      genres: List<Genre>.from(
          json['genres'].map((genre) => Genre.fromJson(genre))),
      tags: List<Tag>.from(json['tags'].map((tag) => Tag.fromJson(tag))),
      shortScreenshots: List<ShortScreenshot>.from(json['short_screenshots']
          .map((screenshot) => ShortScreenshot.fromJson(screenshot))),
    );
  }
}
