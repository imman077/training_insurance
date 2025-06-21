part of "btoc_car_ocr_screen_screen.dart";

/*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ widget implementation identifier comment @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/

class BtocCarOcrScreenQuotesFieldWidget extends ConsumerStatefulWidget {
  const BtocCarOcrScreenQuotesFieldWidget({super.key});

  @override
  ConsumerState<BtocCarOcrScreenQuotesFieldWidget> createState() =>
      _BtocCarOcrScreenQuotesFieldWidgetState();
}

class _BtocCarOcrScreenQuotesFieldWidgetState
    extends ConsumerState<BtocCarOcrScreenQuotesFieldWidget> {
  bool isHovering = false;
  final PageController _controller = PageController();

  final List<Map<String, String>> data = [
    {"brand": "Toyota", "type": "Ambulance", "id": "2510006799"},
    {"brand": "Ford", "type": "Truck", "id": "3520006799"},
    {"brand": "Tesla", "type": "Car", "id": "4530006799"},
  ];

  @override
  Widget build(BuildContext context) {
    final widgetKey = ref.watch(btocCarOcrScreenQuotesFieldKeyProvider);
    final widgetFocusNode =
        ref.watch(btocCarOcrScreenQuotesFieldFocusNodeProvider);
    const testKey = ValueKey('BtocCarOcrScreenQuotesFieldWidget');

    return Column(
      children: [
        BoxAppi(
          border: Border.all(color: Color(0xFFFFD941), width: 1),
          fillColor: Color(0xfffffceb),
          borderRadius: BorderRadius.circular(20),
          child: Padding(
            padding:
                media(context, 600) ? EdgeInsets.all(0) : EdgeInsets.all(4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: media(context, 600) ? 40 : 50,
                  width: media(context, 600)
                      ? MediaQuery.of(context).size.width
                      : 480,
                  child: PageView.builder(
                    controller: _controller,
                    // itemCount: data.length,
                    itemBuilder: (context, index) {
                      final item = data[index % data.length];
                      return Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(item["brand"] ?? "",
                                style: TextStyle(
                                    fontSize: media(context, 600) ? 12 : 14)),
                            SizedBox(
                              height: 20,
                              child: VerticalDivider(
                                  color: Colors.orange, thickness: 1),
                            ),
                            Text(item["type"] ?? "",
                                style: TextStyle(
                                    fontSize: media(context, 600) ? 12 : 14)),
                            SizedBox(
                              height: 20,
                              child: VerticalDivider(
                                  color: Colors.orange, thickness: 1),
                            ),
                            Text(item["id"] ?? "",
                                style: TextStyle(
                                    fontSize: media(context, 600) ? 12 : 14)),
                            media(context, 600)
                                ? Icon(Icons.arrow_right)
                                : MouseRegion(
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
                                    child: SizedBox(
                                      width: media(context, 600) ? 100 : 120,
                                      height: 35,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Color(0xFFF47D0F),
                                              shadowColor:
                                                  Colors.black.withOpacity(0.3),
                                              elevation: 10,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadiusGeometry
                                                          .circular(20))),
                                          onPressed: () {},
                                          child: TextAppi(
                                            text: 'Continue',
                                            textStyle: Style(
                                              $text.fontWeight(FontWeight.bold),
                                              $text.color(Colors.white),
                                              $text.fontSize(15),
                                            ),
                                          )),
                                    ),
                                  ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SmoothPageIndicator(
          controller: _controller,
          count: data.length,
          effect: WormEffect(
            dotHeight: media(context, 600) ? 8 : 10,
            dotWidth: media(context, 600) ? 8 : 10,
            spacing: media(context, 600) ? 8 : 10,
            dotColor: Colors.grey,
            activeDotColor: Colors.orange,
          ),
        ),
      ],
    );
  }
}

class BtocCarOcrScreenUploadFieldWidget extends ConsumerStatefulWidget {
  const BtocCarOcrScreenUploadFieldWidget({super.key});

  @override
  ConsumerState<BtocCarOcrScreenUploadFieldWidget> createState() =>
      _BtocCarOcrScreenUploadFieldWidgetState();
}

class _BtocCarOcrScreenUploadFieldWidgetState
    extends ConsumerState<BtocCarOcrScreenUploadFieldWidget> {
  File? selectedImage;
  final String imagePath = 'assets/images/ocr_bg.png';

  Future<void> pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        selectedImage = File(pickedFile.path);
      });
    }
  }

  // Show Image As Big
  void showImageDialog(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: 'Image Zoom',
      barrierColor: Colors.black54,
      transitionDuration: Duration(milliseconds: 200),
      pageBuilder: (context, anim1, anim2) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Material(
              color: Colors.transparent,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 2,
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: CircleAvatar(
                        backgroundColor: Colors.black.withOpacity(0.2),
                        child: Icon(Icons.close, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final widgetKey = ref.watch(btocCarOcrScreenUploadFieldKeyProvider);
    final widgetFocusNode =
        ref.watch(btocCarOcrScreenUploadFieldFocusNodeProvider);

    return Row(
      children: [
        Expanded(
          // Upload Container
          child: GestureDetector(
            onTap: pickImage,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: DottedBorder(
                color: Color(0xff00000033).withOpacity(0.2),
                radius: Radius.circular(12),
                borderType: BorderType.RRect,
                strokeWidth: 1,
                dashPattern: [8, 4],
                child: Padding(
                  padding: media(context, 600)
                      ? EdgeInsets.all(4)
                      : EdgeInsets.all(10),
                  child: BoxAppi(
                    child: Row(
                      children: [
                        SizedBox(
                          width: media(context, 600) ? MediaQuery.of(context).size.width * 0.1 : 70,
                          child: Icon(
                            Icons.upload_file,
                            color: Color(0xff79838E80).withOpacity(0.5),
                          ),
                        ),
                        Expanded(
                          child: TextAppi(
                            text: selectedImage == null
                                ? 'Upload your Vehicle registration card (back side)'
                                : selectedImage!.path.split('/').last,
                            textStyle: Style(
                              $text.color(Color(0xff333333)),
                              $text.fontWeight(FontWeight.w600),
                              $text.overflow.ellipsis(),
                              media(context, 600)
                                  ? $text.fontSize(12)
                                  : $text.fontSize(14),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        // View Image
        GestureDetector(
            onTap: () => showImageDialog(context),
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Image.asset(
                imagePath,
                height: media(context, 600) ? 50 : 60,
                width: media(context, 600) ? 50 : 60,
              ),
            ))
      ],
    );
  }
}

class BtocCarOcrScreenChassisNoWidget extends ConsumerWidget {
  const BtocCarOcrScreenChassisNoWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final value = ref.watch(
        btocCarOcrScreenNotifierProvider.select((value) => value.chassis_no));
    final widgetKey = ref.watch(btocCarOcrScreenChassisNoKeyProvider);
    final widgetFocusNode =
        ref.watch(btocCarOcrScreenChassisNoFocusNodeProvider);
    const testKey = ValueKey('BtocCarOcrScreenChassisNoWidget');

    return TextFieldAppi(
      widgetKey: widgetKey,
      lable: 'Chasis Number',
      textStyle: TextStyle(fontSize: media(context, 600) ? 12 : 16),
      allCaps: true,
      noSpace: true,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Field cannot be empty';
        }
        if (value.length > 18) {
          return 'Maximum 18 characters allowed';
        }
        if (!RegExp(r'^[A-Z0-9]+$').hasMatch(value)) {
          return 'No Special Symbols Allowed';
        }
        if (value.startsWith(' ')) {
          return 'No leading space allowed';
        }
        return null;
      },
      border: OutlineInputBorder(
          borderSide: BorderSide(
              color: Color(0xff00000033).withOpacity(0.2), width: 1.2),
          borderRadius: BorderRadius.circular(10)),
      mandatory: true,
    );
  }
}

class BtocCarOcrScreenProceedButtonWidget extends ConsumerStatefulWidget {
  const BtocCarOcrScreenProceedButtonWidget({super.key});

  @override
  ConsumerState<BtocCarOcrScreenProceedButtonWidget> createState() =>
      _BtocCarOcrScreenProceedButtonWidgetState();
}

class _BtocCarOcrScreenProceedButtonWidgetState
    extends ConsumerState<BtocCarOcrScreenProceedButtonWidget> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    final widgetKey = ref.watch(btocCarOcrScreenProceedButtonKeyProvider);
    final widgetFocusNode =
        ref.watch(btocCarOcrScreenProceedButtonFocusNodeProvider);
    const testKey = ValueKey('BtocCarOcrScreenProceedButtonWidget');

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
      child: SizedBox(
        width: media(context, 600) ? 80 : 120,
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
                      ? $text.fontSize(12)
                      : $text.fontSize(16)),
            ),
          ),
        ),
      ),
    );
  }
}


