
import 'package:daily_task/common/widgets/rounded_container.dart';
import 'package:daily_task/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
     
      child: Shimmer.fromColors (
        highlightColor: AppColors.lightgrey.withValues(alpha: 0.1),
        baseColor: AppColors.darkgrey,
          child:
          ListView.separated(
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder:
          (context, index) =>
           ListTile(
            leading: RoundedContainer(width: 20,height: 20,borderRadius: 5,),
            
            title: RoundedContainer(height: 10, width:10,),
            subtitle: RoundedContainer( height: 10,  width: 50,),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                RoundedContainer(height: 25,width: 25,borderRadius: 5,),
                SizedBox(width: 10,),
                RoundedContainer(height: 25,width: 25,borderRadius: 5,),
              
              ],
            ),
          ),
      separatorBuilder:
          (context, index) => Divider(
            color: AppColors.grey,
            height: 0,
            thickness: 0.4,
            indent: 5,
            endIndent: 5,
          ),
      itemCount:6,
    )
          
          
          
          
            
      ),
    );
  }
}
