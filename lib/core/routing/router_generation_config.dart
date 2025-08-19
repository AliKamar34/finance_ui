import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/features/auth/presentation/views/create_new_password_view.dart';
import 'package:finance_app/features/auth/presentation/views/forget_password_view.dart';
import 'package:finance_app/features/auth/presentation/views/log_in_view.dart';
import 'package:finance_app/features/auth/presentation/views/otp_verification_view.dart';
import 'package:finance_app/features/auth/presentation/views/password_changed_view.dart';
import 'package:finance_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:finance_app/features/onBoarding/views/on_boarding_view.dart';
import 'package:go_router/go_router.dart';

class RouterGenerationConfig {
  static GoRouter goRoute = GoRouter(
    initialLocation: AppRoutes.onBoarding,
    routes: [
      GoRoute(
        path: AppRoutes.onBoarding,
        name: AppRoutes.onBoarding,
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: AppRoutes.login,
        name: AppRoutes.login,
        builder: (context, state) => const LogInView(),
      ),
      GoRoute(
        path: AppRoutes.singUp,
        name: AppRoutes.singUp,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: AppRoutes.forgetPassword,
        name: AppRoutes.forgetPassword,
        builder: (context, state) => const ForgetPasswordView(),
      ),
      GoRoute(
        path: AppRoutes.createNewPassword,
        name: AppRoutes.createNewPassword,
        builder: (context, state) => const CreateNewPasswordView(),
      ),
      GoRoute(
        path: AppRoutes.passwordChanged,
        name: AppRoutes.passwordChanged,
        builder: (context, state) => const PasswordChangedView(),
      ),
      GoRoute(
        path: AppRoutes.otpVerification,
        name: AppRoutes.otpVerification,
        builder: (context, state) => const OtpVerificationView(),
      ),
    ],
  );
}
