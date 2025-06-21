part of "btoc_car_ocr_screen_screen.dart";

class BtocCarOcrScreenMobile extends ConsumerWidget {
  const BtocCarOcrScreenMobile({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Form(
      key: ref.read(btocCarOcrScreenFormKeyProvider),
      child: SizedBox(
        width: double.maxFinite,
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
              primary: true,
              physics: ref.watch(physicsProvider_),
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                  child: Column(
                    children: [
                      TextAppi(
                        text: 'Quick and easy! Just input the '
                            'chassis number',
                        textStyle: Style(
                          $text.fontSize(13),
                          $text.fontWeight(FontWeight.w600),
                          $text.color(Color(0xff151515)),
                          $text.textAlign(TextAlign.center),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextAppi(
                          text: 'Your recent quotes',
                          textStyle: Style(
                            $text.color(Colors.red),
                            $text.fontSize(13),
                            $text.fontWeight(FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        spacing: 30,
                        children: [
                          BtocCarOcrScreenQuotesFieldWidget(),
                          BtocCarOcrScreenUploadFieldWidget(),
                          TextAppi(
                            text: '(OR)',
                            textStyle: Style(
                                $text.color(
                                    Color(0xff33333380).withOpacity(0.5)),
                                $text.fontSize(14),
                                $text.fontWeight(FontWeight.w500)),
                          ),
                          BtocCarOcrScreenChassisNoWidget(),
                          BtocCarOcrScreenProceedButtonWidget(),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Column(
                          children: [
                            TextAppi(
                              text: 'Skip for manual entry',
                              textStyle: Style(
                                  $text.color(Colors.grey.withOpacity(0.8)),
                                  $text.fontSize(12)),
                            ),
                            Container(
                              height: 1,
                              width: 120,
                              color: Colors.grey.withOpacity(0.8),
                            )
                          ],
                        ),
                      )
                    ],
                  ))),
        ),
      ),
    );
  }
}
