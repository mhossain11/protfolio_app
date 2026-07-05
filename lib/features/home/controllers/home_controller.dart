import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_constants.dart';
import '../../../core/services/github_service.dart';
import '../../../core/services/url_service.dart';
import '../../../core/services/visitor_service.dart';
import '../../../data/repositories/portfolio_repository.dart';

class HomeController extends GetxController {
  HomeController(
    this.repository,
    this.githubService,
    this.urlService,
    this.visitorService,
  );

  final PortfolioRepository repository;
  final GithubService githubService;
  final UrlService urlService;
  final VisitorService visitorService;
  final scrollController = ScrollController();
  final showTopButton = false.obs;
  final typedTitle = ''.obs;
  final githubRepos = RxnInt();
  final visitors = 0.obs;
  Timer? _typingTimer;
  int _titleIndex = 0;
  int _charIndex = 0;

  @override
  void onInit() {
    super.onInit();
    visitors.value = visitorService.increment();
    scrollController.addListener(
      () => showTopButton.value = scrollController.offset > 500,
    );
    _startTyping();
    _loadGithub();
  }

  void _startTyping() {
    _typingTimer = Timer.periodic(const Duration(milliseconds: 95), (_) {
      final title = repository.titles[_titleIndex];
      _charIndex = ((_charIndex + 1).clamp(0, title.length)).toInt();
      typedTitle.value = title.substring(0, _charIndex);
      if (_charIndex == title.length) {
        Future.delayed(const Duration(milliseconds: 900), () {
          _titleIndex = (_titleIndex + 1) % repository.titles.length;
          _charIndex = 0;
        });
      }
    });
  }

  Future<void> _loadGithub() async => githubRepos.value = await githubService
      .fetchPublicRepoCount(AppConstants.githubUser);
  void openUrl(String url) => urlService.open(url);
  void scrollToTop() => scrollController.animateTo(
    0,
    duration: const Duration(milliseconds: 700),
    curve: Curves.easeOutCubic,
  );
  void stopTyping() => _typingTimer?.cancel();
  void scrollTo(GlobalKey key) => Scrollable.ensureVisible(
    key.currentContext!,
    duration: const Duration(milliseconds: 700),
    curve: Curves.easeOutCubic,
  );

  @override
  void onClose() {
    stopTyping();
    scrollController.dispose();
    super.onClose();
  }
}
