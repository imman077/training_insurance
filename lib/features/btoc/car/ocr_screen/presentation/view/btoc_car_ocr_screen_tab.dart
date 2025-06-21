part of "btoc_car_ocr_screen_screen.dart";

class BtocCarOcrScreenTab extends ConsumerWidget {
  const BtocCarOcrScreenTab({super.key});

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
              child:Padding(
                  padding:
                  media(context, 600) ? EdgeInsets.zero : EdgeInsets
                      .symmetric(vertical:
                  20, horizontal: 25),
                  child: BoxAppi(
                    child: Column(
                      children: [
                        cardLayout(
                          context: context,
                          path: '/btoc_car_initial_screen',
                          title: 'Quick and easy! Just input the chassis number',
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: TextAppi(
                                  text: 'Your recent quotes',
                                  textStyle: Style(
                                    $text.color(Colors.red),
                                    media(context, 600) ? $text.fontSize(14)
                                        : $text.fontSize(18),
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
                                        media(context, 600) ? $text.fontSize
                                          (16) : $text.fontSize
                                          (18),
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
                                          media(context, 600) ? $text
                                              .fontSize(13) :$text.fontSize(15)),
                                    ),
                                    Container(
                                      height: 1,
                                      width: media(context, 600) ? 130 : 150,
                                      color: Colors.grey.withOpacity(0.8),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
          ),
        ),
      ),
    );
  }
}
