part of "btoc_car_more_details_screen.dart";

/*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ widget implementation identifier comment @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/

final selectedCarInsuranceTypeProvider =
    StateProvider<String>((ref) => 'comprehensive');

class BtocCarMoreDetailsTopContainerWidget extends ConsumerWidget {
  const BtocCarMoreDetailsTopContainerWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final widgetKey = ref.watch(btocCarMoreDetailsTopContainerKeyProvider);
    final widgetFocusNode =
        ref.watch(btocCarMoreDetailsTopContainerFocusNodeProvider);
    const testKey = ValueKey('BtocCarMoreDetailsTopContainerWidget');
    return SizedBox(
        height: media(context, 600) ? 50 : 70,
        width: MediaQuery.of(context).size.width,
        child: BoxAppi(
            fillColor: Color(0xFFF5F5F9),
            borderRadius: BorderRadius.circular(16),
            child: Padding(
              padding:  media(context, 320) ? EdgeInsets.symmetric
                (horizontal: 10)  : EdgeInsets.symmetric
                (horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // BMW & Text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/bmw_logo.png',
                        fit: BoxFit.cover,
                        height:  media(context, 600) ? 25  : 35,
                        width: media(context, 600) ? 25  : 35,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      TextAppi(
                        text: 'BMW 328Ci Coupe | 2024',
                        textStyle: Style(
                          $text.color(Color(0xff151515)),
                            media(context, 600) ? $text.fontSize(13) : $text
                                .fontSize(16),
                          $text.fontWeight(FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                  // Pen Icon
                  Icon(
                    Icons.edit,
                    size: 18,
                  )
                ],
              ),
            )));
  }
}

class BtocCarMoreDetailsSelectionContainerWidget extends ConsumerWidget {
  const BtocCarMoreDetailsSelectionContainerWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final widgetKey =
        ref.watch(btocCarMoreDetailsSelectionContainerKeyProvider);
    final widgetFocusNode =
        ref.watch(btocCarMoreDetailsSelectionContainerFocusNodeProvider);
    const testKey = ValueKey('BtocCarMoreDetailsSelectionContainerWidget');
    final selectedType = ref.watch(selectedCarInsuranceTypeProvider);

    Widget buildOption(
        {required String type, required String label, required IconData icon}) {
      final isSelected = selectedType == type;
      return GestureDetector(
        onTap: () =>
            ref.read(selectedCarInsuranceTypeProvider.notifier).state = type,
        child: BoxAppi(
          height:  40,
            border: Border.all(
              color: Color(0xffE6E8EB),
              width: 1,
            ),
            gradientColor: isSelected
                ? LinearGradient(colors: [
                    Color(0xff8BBF29),
                    Color(0xff06A0CF),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight)
                : null,
            radius: 8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(icon,
                    color: isSelected ? Colors.white : Color(0xffBFBFBF),
                  size: media(context, 600) ? 18 : 25,),
                TextAppi(
                  text: label,
                  textStyle: Style(
                    media(context, 600) ? $text.fontSize(12) : $text.fontSize
                      (16),
                    $text.fontWeight(FontWeight.w600),
                    $text.overflow.ellipsis(),
                    isSelected
                        ? $text.color(Colors.white)
                        : $text.color(Colors.black),
                  ),
                ),
              ],
            )),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: buildOption(
              type: 'comprehensive',
              label: "Comprehensive",
              icon: Icons.car_crash),
        ),
        SizedBox(width: 6,),
        Expanded(
          child: buildOption(
              type: 'thirdpartyplus',
              label: "Third Party Plus",
              icon: Icons.man),
        ),
      ],
    );
  }
}

class BtocCarMoreDetailsMakeDropdownWidget extends ConsumerWidget {
  const BtocCarMoreDetailsMakeDropdownWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final value = ref.watch(btocCarMoreDetailsNotifierProvider
        .select((value) => value.make_dropdown));
    final widgetKey = ref.watch(btocCarMoreDetailsMakeDropdownKeyProvider);
    final widgetFocusNode =
        ref.watch(btocCarMoreDetailsMakeDropdownFocusNodeProvider);
    const testKey = ValueKey('BtocCarMoreDetailsMakeDropdownWidget');
    return DropDownFieldAppi(
        items: ['Toyato', 'Nissan', 'Renault', 'Mercedes'],
        textFieldStyle: TextFieldParamsAppi(
            widgetKey: widgetKey, mandatory: true, lable: 'Select Make'
        ),
        onChanged: (value) {});
  }
}

class BtocCarMoreDetailsModelDropdownWidget extends ConsumerWidget {
  const BtocCarMoreDetailsModelDropdownWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final value = ref.watch(btocCarMoreDetailsNotifierProvider
        .select((value) => value.model_dropdown));
    final widgetKey = ref.watch(btocCarMoreDetailsModelDropdownKeyProvider);
    final widgetFocusNode =
        ref.watch(btocCarMoreDetailsModelDropdownFocusNodeProvider);
    const testKey = ValueKey('BtocCarMoreDetailsModelDropdownWidget');
    return DropDownFieldAppi(
        items: ['200', '280C', 'Diesel Truck', 'Fuel Tanker'],
        textFieldStyle: TextFieldParamsAppi(
            widgetKey: widgetKey, mandatory: true, lable: 'Select Model'),
        onChanged: (value) {});
  }
}

class BtocCarMoreDetailsModelYearDropdownWidget extends ConsumerWidget {
  const BtocCarMoreDetailsModelYearDropdownWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final value = ref.watch(btocCarMoreDetailsNotifierProvider
        .select((value) => value.model_year_dropdown));
    final widgetKey = ref.watch(btocCarMoreDetailsModelYearDropdownKeyProvider);
    final widgetFocusNode =
        ref.watch(btocCarMoreDetailsModelYearDropdownFocusNodeProvider);
    const testKey = ValueKey('BtocCarMoreDetailsModelYearDropdownWidget');
    return DropDownFieldAppi(
        items: ['2025', '2024', '2023', '2022'],
        textFieldStyle: TextFieldParamsAppi(
            widgetKey: widgetKey,
            mandatory: true,
            lable: 'Select Model '
                'Year'),
        onChanged: (value) {});
  }
}

class BtocCarMoreDetailsModelCylindersWidget extends ConsumerWidget {
  const BtocCarMoreDetailsModelCylindersWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final value = ref.watch(btocCarMoreDetailsNotifierProvider
        .select((value) => value.model_cylinders));
    final widgetKey = ref.watch(btocCarMoreDetailsModelCylindersKeyProvider);
    final widgetFocusNode =
        ref.watch(btocCarMoreDetailsModelCylindersFocusNodeProvider);
    const testKey = ValueKey('BtocCarMoreDetailsModelCylindersWidget');
    return DropDownFieldAppi(
        items: ['0', '1', '2', '3'],
        textFieldStyle: TextFieldParamsAppi(
            widgetKey: widgetKey, mandatory: true, lable: 'Select Cylinders'),
        onChanged: (value) {});
  }
}

class BtocCarMoreDetailsBodyTypeWidget extends ConsumerWidget {
  const BtocCarMoreDetailsBodyTypeWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final value = ref.watch(
        btocCarMoreDetailsNotifierProvider.select((value) => value.body_type));
    final widgetKey = ref.watch(btocCarMoreDetailsBodyTypeKeyProvider);
    final widgetFocusNode =
        ref.watch(btocCarMoreDetailsBodyTypeFocusNodeProvider);
    const testKey = ValueKey('BtocCarMoreDetailsBodyTypeWidget');
    return DropDownFieldAppi(
        items: ['Ambulance', 'Bus', 'Sports', 'Van'],
        textFieldStyle: TextFieldParamsAppi(
            widgetKey: widgetKey, mandatory: true, lable: 'Body Type'),
        onChanged: (value) {});
  }
}

class BtocCarMoreDetailsSeatingCapacityWidget extends ConsumerWidget {
  const BtocCarMoreDetailsSeatingCapacityWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final value = ref.watch(btocCarMoreDetailsNotifierProvider
        .select((value) => value.seating_capacity));
    final widgetKey = ref.watch(btocCarMoreDetailsSeatingCapacityKeyProvider);
    final widgetFocusNode =
        ref.watch(btocCarMoreDetailsSeatingCapacityFocusNodeProvider);
    const testKey = ValueKey('BtocCarMoreDetailsSeatingCapacityWidget');
    return DropDownFieldAppi(
        items: ['2', '3', '4', '5'],
        textFieldStyle: TextFieldParamsAppi(
            widgetKey: widgetKey, mandatory: true, lable: 'Seating Capacity'),
        onChanged: (value) {});
  }
}

class BtocCarMoreDetailsUsageWidget extends ConsumerWidget {
  const BtocCarMoreDetailsUsageWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final value = ref.watch(
        btocCarMoreDetailsNotifierProvider.select((value) => value.usage));
    final widgetKey = ref.watch(btocCarMoreDetailsUsageKeyProvider);
    final widgetFocusNode = ref.watch(btocCarMoreDetailsUsageFocusNodeProvider);
    const testKey = ValueKey('BtocCarMoreDetailsUsageWidget');
    return DropDownFieldAppi(
        items: ['Private', 'Test(30 Days)', 'Taxi', 'Rent a Car'],
        textFieldStyle: TextFieldParamsAppi(
            widgetKey: widgetKey, mandatory: true, lable: 'Usage'),
        onChanged: (value) {});
  }
}

class BtocCarMoreDetailsFirstRegistrationYearWidget extends ConsumerWidget {
  const BtocCarMoreDetailsFirstRegistrationYearWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final value = ref.watch(btocCarMoreDetailsNotifierProvider
        .select((value) => value.first_registration_year));
    final widgetKey =
        ref.watch(btocCarMoreDetailsFirstRegistrationYearKeyProvider);
    final widgetFocusNode =
        ref.watch(btocCarMoreDetailsFirstRegistrationYearFocusNodeProvider);
    const testKey = ValueKey('BtocCarMoreDetailsFirstRegistrationYearWidget');
    return DropDownFieldAppi(
        items: ['2025'],
        textFieldStyle: TextFieldParamsAppi(
            widgetKey: widgetKey,
            mandatory: true,
            lable: 'First '
                'Registeration year'),
        onChanged: (value) {});
  }
}

class BtocCarMoreDetailsVehicleValueWidget extends ConsumerWidget {
  const BtocCarMoreDetailsVehicleValueWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final value = ref.watch(btocCarMoreDetailsNotifierProvider
        .select((value) => value.vehicle_value));
    final widgetKey = ref.watch(btocCarMoreDetailsVehicleValueKeyProvider);
    final widgetFocusNode =
        ref.watch(btocCarMoreDetailsVehicleValueFocusNodeProvider);
    const testKey = ValueKey('BtocCarMoreDetailsVehicleValueWidget');
    return TextFieldAppi(
      widgetKey: widgetKey,
      lable: media(context, 600)
          ? 'Please enter your\nVehicle Value'
          : 'Ple'
              'ase enter your Vehicle Value',
      mandatory: true,
      currency: true,
      currencyCode: CurrencyCode.QAR,
      maxLength: 10,
    );
  }
}

class BtocCarMoreDetailsNextButtonWidget extends ConsumerStatefulWidget {
  const BtocCarMoreDetailsNextButtonWidget({super.key});

  @override
  ConsumerState createState() => _BtocCarMoreDetailsNextButtonWidgetState();
}

class _BtocCarMoreDetailsNextButtonWidgetState
    extends ConsumerState<BtocCarMoreDetailsNextButtonWidget> {
  final testKey = ValueKey('BtocCarMoreDetailsNextButtonWidget');
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    final widgetKey = ref.watch(btocCarMoreDetailsNextButtonKeyProvider);
    final widgetFocusNode =
        ref.watch(btocCarMoreDetailsNextButtonFocusNodeProvider);

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        setState(() {
          isHovering = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovering = false;
        });
      },
      child: GestureDetector(
        onTap: (){
          BtocCarMoreDetailsController().validate(ref: ref);
        },
        child: SizedBox(
          width: media(context, 600) ? 100 : 120,
          child: BoxAppi(
            borderRadius: BorderRadius.circular(60),
            border: Border.all(
                color: isHovering ? Color(0xFF8BBF29) : Colors.transparent,
                width: 2),
            gradientColor:
                LinearGradient(colors: [Color(0xFF8BBF29), Color(0xFF06A0CF)]),
            shadowBlur: isHovering ? 22 : 0,
            shadowOffset: isHovering ? Offset(0, 16) : null,
            shadowColor:
                isHovering ? Colors.black.withOpacity(0.14) : Colors.transparent,
            height: media(context, 600) ? 30 : 40,
            child: Center(
              child: TextAppi(
                text: 'Proceed',
                textStyle: Style(
                    $text.color(Colors.white),
                    $text.fontWeight(FontWeight.w600),
                    media(context, 600)
                        ? $text.fontSize(14)
                        : $text.fontSize(16)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
