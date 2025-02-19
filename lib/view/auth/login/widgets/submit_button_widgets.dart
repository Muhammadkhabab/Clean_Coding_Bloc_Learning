import 'package:clean_coding_project/config/routes/routes_name.dart';
import 'package:clean_coding_project/utlis/extensions/flash_bar_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../bloc/log_in_bloc.dart';
import '../../../../config/colors/app_colors.dart';
import '../../../../config/components/buttons/custom_elevated_button.dart';
import '../../../../utlis/enums.dart';

class SubmitButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const SubmitButton({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LogInBloc, LogInState>(
      listenWhen: (current, previous) => current.logInApiResponse != previous.logInApiResponse,
      listener: (context, state) {
        if (state.logInApiResponse.status == Status.error) {
          context.flushBarErrorMessage(message: state.logInApiResponse.message.toString()); // Show error
        }
        if (state.logInApiResponse.status == Status.completed) {
          context.flushBarSuccessMessage(message: state.logInApiResponse.message.toString()); // Show error
          Navigator.pushNamed(context, RoutesName.home);
        }
      },
      child: BlocBuilder<LogInBloc, LogInState>(
        builder: (context, state) {
          return CustomButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                context.read<LogInBloc>().add(LogInApi()); // Dispatch login event
              }
            },
            isLoading: state.logInApiResponse.status == Status.loading, // Show loading indicator
            textColor: Colors.white,
            backgroundColor: AppColors.primaryColor,
            label: 'Login',
            width: double.infinity,
          );
        },
      ),
    );
  }
}
