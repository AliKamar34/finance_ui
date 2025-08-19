# Finance App (UI) 💰

A modern and intuitive Flutter application designed to help you manage your personal finances with ease. Track your expenses, monitor your budget, and gain insights into your spending habits through a clean and visually appealing interface.

This project is built with a feature-first architecture, clean code principles, and a responsive UI.

## 🌟 Features

- **Secure Authentication:** Full auth flow including Sign Up, Login, and Forgot Password using email.
- **Social Sign-On:** Quick authentication using Google, Facebook, and Apple.
- **Dashboard:** A central home screen with a quick look at your card balances and access to common actions.
- **Card Management:** View all your credit/debit cards in a swipeable carousel and a detailed list view.
- **Financial Statistics:** An interactive bar chart to visualize your monthly income and outcome.
- **Profile Management:** View and edit your user profile information.
- **Responsive Design:** The UI adapts to different screen sizes for a consistent user experience.
- **Cross-Platform:** A single codebase that runs on both Android and iOS.

## 📸 Screenshots


 | Login | ForgetPassword | ResetPassword| OTP | Home | Statistics | AllCards | Profile |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |

<img src="https://github.com/AliKamar34/finance_ui/blob/main/assets/screenshots/logIn.png" width="200">  <img src="https://github.com/AliKamar34/finance_ui/blob/main/assets/screenshots/forgetPassword.png" width="200">  <img src="https://github.com/AliKamar34/finance_ui/blob/main/assets/screenshots/resetPassword.png" width="200">  <img src="https://github.com/AliKamar34/finance_ui/blob/main/assets/screenshots/otp.png" width="200">  <img src="https://github.com/AliKamar34/finance_ui/blob/main/assets/screenshots/home.png" width="200">  <img src="https://github.com/AliKamar34/finance_ui/blob/main/assets/screenshots/statistics.png" width="200">  <img src="https://github.com/AliKamar34/finance_ui/blob/main/assets/screenshots/allCard.png" width="200">  <img src="https://github.com/AliKamar34/finance_ui/blob/main/assets/screenshots/Profile.png" width="200"> 

## 🛠️ Tech Stack & Key Libraries

- **Framework:** [Flutter](https://flutter.dev/)
- **Routing:** [go_router](https://pub.dev/packages/go_router)
- **UI Components:**
  - [carousel_slider](https://pub.dev/packages/carousel_slider) for card carousels.
  - [fl_chart](https://pub.dev/packages/fl_chart) for beautiful charts.
  - [pin_code_fields](https://pub.dev/packages/pin_code_fields) for OTP input.
  - [flutter_svg](https://pub.dev/packages/flutter_svg) for SVG asset support.

## 🚀 Getting Started

Follow these instructions to get a copy of the project up and running on your local machine for development and testing.

### Prerequisites

Make sure you have the Flutter SDK installed on your computer. For more information on how to install Flutter, see the [official Flutter documentation](https://flutter.dev/docs/get-started/install).

### Installation

1.  **Clone the repository:**
    ```sh
    git clone https://github.com/AliKamar34/finance_ui.git
    cd finance_ui
    ```

2.  **Install dependencies:**
    Run the following command in your terminal to get all the necessary packages.
    ```sh
    flutter pub get
    ```

3.  **Run the application:**
    Connect a device or start an emulator, and then run the app.
    ```sh
    flutter run
    ```

## 📂 Project Structure

The project follows a clean, feature-first architectural pattern to ensure scalability and maintainability.

```
lib/
├── core/                  # Core utilities (routing, themes, shared widgets, constants)
│   ├── constants/
│   ├── routing/
│   ├── themes/
│   └── widgets/
├── features/              # Feature-based modules
│   ├── auth/              # Authentication feature (login, signup, etc.)
│   ├── home/              # Home dashboard, stats, profile, etc.
│   └── onBoarding/        # Initial onboarding screens
├── finance_app.dart       # Root MaterialApp widget
└── main.dart              # Application entry point
```

