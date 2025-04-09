import 'package:flutter/material.dart';
import 'package:online_market/views/product_details/ui/widgets/user_comment.dart';

import '../../../../core/theme/app_colors.dart';

class CommentsList extends StatelessWidget {
  const CommentsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder:
          (context, index) =>
              const Divider(color: AppColors.kGreyColor, thickness: 1),
      itemCount: 5,
      itemBuilder: (_, index) {
        return const UserComment();
      },
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
