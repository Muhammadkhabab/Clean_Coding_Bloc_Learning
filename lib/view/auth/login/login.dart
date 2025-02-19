import 'package:clean_coding_project/dependency_injection/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../bloc/log_in_bloc.dart';
import 'widgets/submit_button_widgets.dart';
import 'widgets/widgets.dart';

class LogInView extends StatefulWidget {
  const LogInView({super.key});

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  late LogInBloc _logInBloc;
  final _logInformKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _logInBloc = LogInBloc(authApiRepository: getIt());
  }

  @override
  void dispose() {
    super.dispose();
    _logInBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _logInBloc,
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0, automaticallyImplyLeading: false, scrolledUnderElevation: 0),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Form(
              key: _logInformKey,
              child: Column(
                children: [
                  Text('Sign In', style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(height: 68),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        EmailInputWidget(),
                        const SizedBox(height: 16),
                        PasswordInputWidget(),
                        ForgotPassword(),
                        const SizedBox(height: 24),
                        SubmitButton(formKey: _logInformKey),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
