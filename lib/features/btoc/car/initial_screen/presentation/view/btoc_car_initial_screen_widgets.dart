part of "btoc_car_initial_screen_screen.dart";

/*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ widget implementation identifier comment @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/

class BtocCarInitialScreenMobileNoWidget extends ConsumerWidget {
  const BtocCarInitialScreenMobileNoWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final value = ref.watch(btocCarInitialScreenNotifierProvider
        .select((value) => value.mobile_no));
    final widgetKey = ref.watch(btocCarInitialScreenMobileNoKeyProvider);
    final widgetFocusNode =
        ref.watch(btocCarInitialScreenMobileNoFocusNodeProvider);
    const testKey = ValueKey('BtocCarInitialScreenMobileNoWidget');
    return TextFieldAppi(
      widgetKey: widgetKey,
      lable: media(context, 420)
          ? 'Mobile \nNumber'
          : media(context, 1200)
              ? ''
                  'Mobile Number'
              : media(context, 1240)
                  ? ''
                      'Mobile \nNumber'
                  : 'Mobile Number',
      mobile: true,
      mandatory: true,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Mobile Number can\'t be empty';
        }
        final regExp = RegExp(r'^[6-9]\d{9}$');
        if (!regExp.hasMatch(value)) {
          return 'Enter a valid 10-digit mobile number';
        }
        return null;
      },
    );
  }
}

class BtocCarInitialScreenEmailIdWidget extends ConsumerWidget {
  const BtocCarInitialScreenEmailIdWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final value = ref.watch(
        btocCarInitialScreenNotifierProvider.select((value) => value.email_id));
    final widgetKey = ref.watch(btocCarInitialScreenEmailIdKeyProvider);
    final widgetFocusNode =
        ref.watch(btocCarInitialScreenEmailIdFocusNodeProvider);
    const testKey = ValueKey('BtocCarInitialScreenEmailIdWidget');
    return TextFieldAppi(
      widgetKey: widgetKey,
      lable: 'Email',
      mandatory: true,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter an email address';
        }
        final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
        if (!emailRegex.hasMatch(value)) {
          return 'Enter a valid email address';
        }
        return null;
      },
    );
  }
}

class BtocCarInitialScreenButtonWidget extends ConsumerStatefulWidget {
  const BtocCarInitialScreenButtonWidget({super.key});

  @override
  ConsumerState createState() => _BtocCarInitialScreenButtonWidgetState();
}

class _BtocCarInitialScreenButtonWidgetState
    extends ConsumerState<BtocCarInitialScreenButtonWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final widgetKey = ref.watch(btocCarInitialScreenButtonKeyProvider);
    final widgetFocusNode =
        ref.watch(btocCarInitialScreenButtonFocusNodeProvider);
    const testKey = ValueKey('BtocCarInitialScreenButtonWidget');
    return MouseRegion(
      onEnter: (_) => setState(() {
        isHovered = true;
      }),
      onExit: (_) => setState(() {
        isHovered = false;
      }),
      child: SizedBox(
        width: 125,
        child: GestureDetector(
          onTap: () {
            appiNavigate(context: context, path: '/btoc_car_ocr_screen');
          },
          child: BoxAppi(
              height: 35,
              borderRadius: BorderRadius.circular(100),
              border: isHovered
                  ? Border.all(
                      color: Color(0xFF8BBF29),
                      width: 2,
                    )
                  : null,
              gradientColor: LinearGradient(
                  colors: [Color(0xFF8BBF29), Color(0xFF06A0CF)]),
              shadowBlur: isHovered ? 22 : 0,
              shadowOffset: isHovered ? Offset(0, 16) : null,
              shadowColor: isHovered
                  ? Colors.black.withOpacity(0.14)
                  : Colors.transparent,
              child: Center(
                  child: TextAppi(
                text: 'Proceed',
                textStyle: Style($text.fontWeight(FontWeight.bold),
                    $text.color(Colors.white), $text.fontSize(15)),
              ))),
        ),
      ),
    );
  }
}

class BtocCarInitialScreenCarImgWidget extends ConsumerWidget {
  const BtocCarInitialScreenCarImgWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final widgetKey = ref.watch(btocCarInitialScreenCarImgKeyProvider);
    final widgetFocusNode =
        ref.watch(btocCarInitialScreenCarImgFocusNodeProvider);
    const testKey = ValueKey('BtocCarInitialScreenCarImgWidget');
    return Image.asset(
      'assets/images/car.png',
      height: 350,
      width: 450,
    );
  }
}

class BtocCarInitialScreenBigContainerWidget extends ConsumerWidget {
  const BtocCarInitialScreenBigContainerWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final widgetKey = ref.watch(btocCarInitialScreenBigContainerKeyProvider);
    final widgetFocusNode =
        ref.watch(btocCarInitialScreenBigContainerFocusNodeProvider);
    const testKey = ValueKey('BtocCarInitialScreenBigContainerWidget');
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.85,
        child: BoxAppi(
            borderRadius: BorderRadius.circular(30),
            shadowColor: Color(0xff292d88).withOpacity(0.06),
            shadowBlur: 66,
            shadowOffset: Offset(0, -51),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  RichText(
                    text: TextSpan(children: [
                      // Motor Insurance
                      TextSpan(
                          text: 'Motor ',
                          style: TextStyle(
                            fontSize: media(context, 600) ? 46 : 50,
                            color: Color(0xFF8BBF29),
                          )),
                      TextSpan(
                          text: 'Insurance',
                          style: TextStyle(
                              fontSize: media(context, 600) ? 46 : 50,
                              color: Color(0xFF8BBF29).withOpacity(0.5))),
                    ]),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextAppi(
                    text: 'Comprehensive, Tailor-Made Insurance for Your'
                        ' Protection',
                    textStyle: Style(
                        media(context, 600)
                            ? $text.fontSize(16)
                            : $text.fontSize(20),
                        $text.fontWeight(FontWeight.w600),
                        $text.color(Color(0xFF222222)),
                        $text.textAlign(TextAlign.center)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextAppi(
                    text:
                        'A comprehensive and tailor-made insurance covers to protect individuals and entities.',
                    textStyle: Style(
                        media(context, 600)
                            ? $text.fontSize(12)
                            : $text.fontSize(14),
                        $text.fontWeight(FontWeight.w400),
                        $text.color(Color(0xFF222222)),
                        $text.textAlign(TextAlign.center)),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  BtocCarInitialScreenSmallCardWidget(),
                ],
              ),
            )));
  }
}

class BtocCarInitialScreenSmallCardWidget extends ConsumerWidget {
  const BtocCarInitialScreenSmallCardWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final widgetKey = ref.watch(btocCarInitialScreenSmallCardKeyProvider);
    final widgetFocusNode =
        ref.watch(btocCarInitialScreenSmallCardFocusNodeProvider);
    const testKey = ValueKey('BtocCarInitialScreenSmallCardWidget');
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Wrap(
        spacing: 40,
        runSpacing: 40,
        children: [
          // Row 1
          // Card 1
          SmallCard(
            title: 'Own Damage',
            description: 'Covers damages caused by accidents even if they\'re '
                'caused by you or by an unknown party',
            imagePath: 'assets/images/crash_motorcycle.gif',
          ),
          // Row 1
          // Card 2
          SmallCard(
            title: 'Passenger Liability',
            description:
                'Covers damages and injuries to the driver and passengers in your car caused by an accident with limits set by the State of Qatar',
            imagePath: 'assets/images/car_crash.gif',
          ),
          // Row 1
          // card 3
          SmallCard(
            title: 'Riot, Strike, Storms & Flood',
            description:
                'Covers damage to your vehicle caused due to nature calamities, civil unrests and riots',
            imagePath: 'assets/images/boy_faces_car.gif',
          ),
          // Row 2
          // Card 1
          SmallCard(
            title: '24/7 Roadside Assistance',
            description:
                'During the coverage period, you have unlimited access to services such as towing, flat tire assistance, fuel delivery, locksmith support, battery charging, and claims registration.',
            imagePath: 'assets/images/evacuvator.gif',
          ),
          // Row 2
          // Card 2
          SmallCard(
            title: 'Third Party Liability',
            description:
                'Covers damages caused by you to other people, property and vehicles',
            imagePath: 'assets/images/road_rage_car_accident.gif',
          ),
          // Row 2
          // Card 3
          SmallCard(
            title: 'Own Damage',
            description: 'Covers damages caused by accidents even if they\'re '
                'caused by you or by an unknown party',
            imagePath: 'assets/images/car_accident_on_road.gif',
          ),
        ],
      ),
    );
  }
}

class SmallCard extends StatelessWidget {
  String title;
  String description;
  String imagePath;

  SmallCard(
      {super.key,
      required this.title,
      required this.description,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      child: BoxAppi(
          height: 340,
          radius: 16,
          shadowColor: Color(0xff292d88).withOpacity(0.15),
          shadowBlur: 22,
          shadowOffset: Offset(0, 16),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                height: 150,
                width: 270,
              ),
              TextAppi(
                text: title,
                textStyle: Style(
                    media(context, 600)
                        ? $text.fontSize(18)
                        : $text.fontSize(24),
                    $text.color(Color(0xFF333333)),
                    $text.fontWeight(FontWeight.w500)),
              ),
              SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextAppi(
                  text: description,
                  textStyle: Style(
                      media(context, 600)
                          ? $text.fontSize(14)
                          : $text.fontSize(16),
                      $text.color(Color(0xFF526C82)),
                      $text.fontWeight(FontWeight.w400),
                      $text.textAlign.center()),
                ),
              )
            ],
          )),
    );
  }
}
