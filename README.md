# Beacon

A unified academic, extracurricular, and productivity dashboard for college students.

1. Purpose

<<<<<<< HEAD
FlutterFlow projects are built to run on the Flutter _stable_ release.

## Integration Tests

To test on a real iOS / Android device, first connect the device and run the following command from the root of the project:

```bash
flutter test integration_test/test.dart
```

To test on a web browser, first launch `chromedriver` as follows:
```bash
chromedriver --port=4444
```

Then from the root of the project, run the following command:
```bash
flutter drive \
  --driver=test_driver/integration_test.dart \
  --target=integration_test/test.dart \
  -d chrome
```

Find more information about running Flutter integration tests [here](https://docs.flutter.dev/cookbook/testing/integration/introduction#5-run-the-integration-test).

Refer to this guide for instructions on running the tests on [Firebase Test Lab](https://github.com/flutter/flutter/tree/main/packages/integration_test#firebase-test-lab).
=======
Beacon is a cross-platform web and mobile app designed to help college students manage their academic, work, and extracurricular schedules in one unified dashboard.
It integrates assignments, deadlines, and personal events from learning management systems (LMS) such as Brightspace and Canvas, as well as Google Calendar, while using AI to recommend personalized study sessions and reminders.

2. Background

College students often struggle to balance multiple priorities — classes, part-time jobs, and social commitments — across several disconnected platforms.
Deadlines from systems like Brightspace, Canvas, and Google Calendar are fragmented and hard to track, resulting in missed assignments and increased stress.

Beacon addresses this by merging everything into one place and offering AI-powered productivity tools to promote better time management and reduce cognitive overload.

Key integrations:

Google Calendar API for event synchronization

Brightspace/Canvas APIs for course deadlines and assignment data

Firebase for secure authentication and data storage

FlutterFlow for cross-platform app deployment

3. Terminology and References

LMS (Learning Management System): Platforms like Brightspace and Canvas used for course management.

AI Study Block: A suggested study interval generated using workload and schedule data.

Freemium Model: Base app is free, with optional paid campus-wide or productivity upgrade features.

FlutterFlow: A low-code platform for building web and mobile apps using Google’s Flutter framework.

For further information:

Brightspace API Documentation

Google Calendar API Overview

Firebase Documentation

FlutterFlow Platform

4. Example Usage
// Example: Retrieve assignment deadlines from Brightspace API
final assignments = await BrightspaceService.fetchAssignments(userId);

// Example: Generate AI-powered study block suggestion
final studyPlan = AIPlanner.suggestBlocks(assignments, availableHours: 4);


This snippet demonstrates the logic flow for syncing user assignments and generating recommended study plans.

5. Installation

Beacon is currently in the MVP stage.
Follow these steps to set up a local development environment:

# Clone repository
git clone https://github.com/305Soft/CampusLifeOrganizer.git
cd CampusLifeOrganizer

# Install dependencies
flutter pub get

# Run the app
flutter run


Requirements:

Flutter SDK

Firebase credentials

Access to Google Calendar and Brightspace developer APIs

6. API and Technical Documentation

Architecture Overview:

Frontend: FlutterFlow (cross-platform interface)

Backend: Firebase Cloud Functions

Database: Firestore

Integrations: Google Calendar API, Brightspace/Canvas API

AI Layer: OpenAI API (task prioritization and study block planning)

Core Features:

Centralized calendar sync across multiple systems

AI-driven scheduling and reminder generation

Group project tools: shared task lists, meeting scheduler, integrated chat

Personalized productivity insights

7. Structure and Cognitive Funnel

This README is structured to provide:

Immediate understanding of the app’s purpose

Background and motivation for development

Technical details and setup instructions

Example code and integration overview

Additional context and licensing

Readers can skim for quick context or read deeply for full implementation details.

8. Caveats and Limitations

Currently in prototype (MVP) stage with limited live deployment.

LMS integration requires institutional API keys or student login authorization.

Future updates will expand support for additional platforms and advanced analytics.


9. License

This project is licensed under the Creative Commons Attribution License (CC-BY 4.0).
You are free to share and adapt the material for any purpose, provided appropriate credit is given.

10. Credits and Contributors
Ryan Conlan
Dezmond Tracy
Asher MCcoy
Cameron Arruda
Developed by 305Soft
University of Rhode Island, 2025

---

## Code of Conduct

This project follows the [Contributor Covenant v2.1](https://www.contributor-covenant.org/version/2/1/code_of_conduct.html).  
Please review our team’s full [Code of Conduct](docs/CONDUCT.md) before contributing.

[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](docs/CONDUCT.md)
>>>>>>> main
