import 'package:app_booking/utils/colors.dart';
import 'package:app_booking/utils/dimensions.dart';
import 'package:app_booking/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget ({Key? key, required this.text}) : super(key: key);

  @override
  _ExpandableTextWidget  createState() => _ExpandableTextWidget ();
}

class _ExpandableTextWidget  extends State<ExpandableTextWidget > {
  late String firstHalf;
  late String secondHalf;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    secondHalf="";
    firstHalf=widget.text;
  }

  bool hiddenText=true;

  double  textHeight = Dimensions.screenHeight/5.63;

  @override
  void initSate(){
    super.initState();
    if(widget.text.length>textHeight){
      firstHalf = widget.text.substring(0,textHeight.toInt());
      secondHalf = widget.text.substring(textHeight.toInt()+1,widget.text.length);
    }else{
      
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: secondHalf.isEmpty?SmallText(size:Dimensions.font16,text: firstHalf  ):Column(
        children: [
          SmallText(height:1.8,color:AppColors.paraColor,size: Dimensions.font16,text: hiddenText?(firstHalf+"..."):(firstHalf+secondHalf)),
          InkWell(
            onTap: (){
              setState(() {
                hiddenText=!hiddenText;

              });

            },
            child: Row(
              children: [
                SmallText(text: "Show more",color: AppColors.mainColor,),
                Icon(Icons.arrow_drop_down, color: AppColors.mainColor,)
              ],
            ),
            )
        ],
      ),
    );
  }
}