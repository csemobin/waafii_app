import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:waafii/global/custom_assets/custom_button.dart';
import 'package:waafii/utils/app_colors.dart';
import 'package:waafii/utils/app_icons.dart';

class ServiceRequestScreen extends StatefulWidget {
  const ServiceRequestScreen({super.key});

  @override
  State<ServiceRequestScreen> createState() => _ServiceRequestScreenState();
}

class _ServiceRequestScreenState extends State<ServiceRequestScreen> {
  final TextEditingController _datePickerController = TextEditingController();
  DateTime? selectedDate;

  void _openDatePickerModel() async {
    final tempSelectedDate = await showDatePicker(
      context: context,
      firstDate: DateTime(1800),
      lastDate: DateTime.now(),
    );
    setState(() {
      selectedDate = tempSelectedDate;
    });
  }

  void _countryNamePickerModel() {
    showDialog(
      context: context,
      builder: (context) => DropdownMenuItem(child: Card()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorWhite,
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: Text('Request a Service'),
        backgroundColor: AppColors.colorWhite,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.h),
              child: Column(
                children: [

                  // Input Single Text field
                  Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(AppIcons.bagSvg),
                          SizedBox(width: 6.w),
                          Text('Work Title', style: TextStyle(fontSize: 14.sp)),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.r),
                            borderSide: BorderSide(
                              color: AppColors.bordarColor,
                            ),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.greyColor),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.greyColor),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.greyColor.withOpacity(0.5),
                            ),
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),

                  //Service
                  Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(AppIcons.serviceTypeSvg),
                          SizedBox(width: 6.w),
                          Text(
                            'Service Type',
                            style: TextStyle(fontSize: 14.sp),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      GestureDetector(
                        onTap: () => _openDatePickerModel(),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 10.h,
                            horizontal: 5.h,
                          ),
                          width: double.maxFinite.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.greyColor.withOpacity(0.5),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            selectedDate == null
                                ? 'YYYY-DD-MM'
                                : '${selectedDate!.year}-${selectedDate!.month.toString().padLeft(2, '0')}-${selectedDate!.day.toString().padLeft(2, '0')}',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),

                  //Country Selection
                  Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(AppIcons.earthSvg),
                          SizedBox(width: 6.w),
                          Text(
                            'Select Country',
                            style: TextStyle(fontSize: 14.sp),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      GestureDetector(
                        onTap: () => _countryNamePickerModel(),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 10.h,
                            horizontal: 5.h,
                          ),
                          width: double.maxFinite.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.greyColor.withOpacity(0.5),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            selectedDate == null
                                ? 'YYYY-DD-MM'
                                : '${selectedDate!.year}-${selectedDate!.month.toString().padLeft(2, '0')}-${selectedDate!.day.toString().padLeft(2, '0')}',
                          ),
                        ),
                      ),

                      // TextField(
                      //   decoration: InputDecoration(
                      //     focusedBorder: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(15.r),
                      //       borderSide: BorderSide(
                      //         color: AppColors.bordarColor,
                      //       ),
                      //     ),
                      //     disabledBorder: OutlineInputBorder(
                      //       borderSide: BorderSide(color: AppColors.greyColor),
                      //     ),
                      //     border: OutlineInputBorder(
                      //       borderSide: BorderSide(color: AppColors.greyColor),
                      //     ),
                      //     enabledBorder: OutlineInputBorder(
                      //       borderSide: BorderSide(
                      //         color: AppColors.greyColor.withOpacity(0.5),
                      //       ),
                      //       borderRadius: BorderRadius.circular(15.r),
                      //     ),
                      //     errorBorder: OutlineInputBorder(
                      //       borderSide: BorderSide(color: Colors.red),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                  SizedBox(height: 10.h),

                  //Location Selection
                  Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(AppIcons.locationSvg),
                          SizedBox(width: 6.w),
                          Text('Location', style: TextStyle(fontSize: 14.sp)),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.r),
                            borderSide: BorderSide(
                              color: AppColors.bordarColor,
                            ),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.greyColor),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.greyColor),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.greyColor.withOpacity(0.5),
                            ),
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),

                  //Estimated Cost
                  Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(AppIcons.moneySvg),
                          SizedBox(width: 6.w),
                          Text(
                            'Estimated Cost',
                            style: TextStyle(fontSize: 14.sp),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.r),
                            borderSide: BorderSide(
                              color: AppColors.bordarColor,
                            ),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.greyColor),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.greyColor),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.greyColor.withOpacity(0.5),
                            ),
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),

                  //Prefer Date
                  Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(AppIcons.datePickerSvg),
                          SizedBox(width: 6.w),
                          Text(
                            'Prefer Date',
                            style: TextStyle(fontSize: 14.sp),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.r),
                            borderSide: BorderSide(
                              color: AppColors.bordarColor,
                            ),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.greyColor),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.greyColor),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.greyColor.withOpacity(0.5),
                            ),
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),

                  // Description
                  Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(AppIcons.noteBookSvg),
                          SizedBox(width: 6.w),
                          Text(
                            'Description',
                            style: TextStyle(fontSize: 14.sp),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      TextField(
                        maxLines: 6,
                        decoration: InputDecoration(
                          hintText: 'Describe details here ',
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.r),
                            borderSide: BorderSide(
                              color: AppColors.bordarColor,
                            ),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.greyColor),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.greyColor),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.greyColor.withOpacity(0.5),
                            ),
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),

                  //Deadline
                  Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(AppIcons.datePickerSvg),
                          SizedBox(width: 6.w),
                          Text('Deadline', style: TextStyle(fontSize: 14.sp)),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.r),
                            borderSide: BorderSide(
                              color: AppColors.bordarColor,
                            ),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.greyColor),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.greyColor),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.greyColor.withOpacity(0.5),
                            ),
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),

                  // Update Picture and Video
                  Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(AppIcons.uploadSvg),
                          SizedBox(width: 6.w),
                          Text(
                            'Upload Photo and Video',
                            style: TextStyle(fontSize: 14.sp),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      TextField(
                        maxLines: 4,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.r),
                            borderSide: BorderSide(
                              color: AppColors.bordarColor,
                            ),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.greyColor),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.greyColor),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.greyColor.withOpacity(0.5),
                            ),
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  CustomButton(onTap: () {}, title: 'Submit Request'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
