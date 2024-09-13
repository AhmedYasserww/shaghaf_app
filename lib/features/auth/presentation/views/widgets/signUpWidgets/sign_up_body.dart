import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/auth_body.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/custom_appbar_for_auth.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/signUpWidgets/sign_up_details.dart';

import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/widgets/custom_image.dart';
class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthBody(ContainerDetails: SignUpDetails(), paddingFromBottom: 11.h,);
  }
}
