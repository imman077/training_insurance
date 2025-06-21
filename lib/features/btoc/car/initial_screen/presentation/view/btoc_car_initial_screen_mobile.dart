part of "btoc_car_initial_screen_screen.dart";

class BtocCarInitialScreenMobile extends ConsumerWidget {
  const BtocCarInitialScreenMobile({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Form(
      key: ref.read(btocCarInitialScreenFormKeyProvider),
      child: SizedBox(
        width: double.maxFinite,
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
              primary: true,
              physics: ref.watch(physicsProvider_),
              child: BoxAppi(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                  top: -50,
                                  left: 0,
                                  child: Image.asset(
                                    'assets/images/overlay_img'
                                    '.png',
                                    height: 500,
                                    width: 1200,
                                    fit: BoxFit.cover,
                                  )),
                              Padding(
                                padding: media(context, 525)
                                    ? EdgeInsets.only(left: 40)
                                    : EdgeInsets.only(left: 50),
                                child: SizedBox(
                                  width: media(context, 750)
                                      ? MediaQuery.of(context).size.width *
                                          0.83
                                      : MediaQuery.of(context).size.width *
                                          0.85,
                                  child: BoxAppi(
                                    radius: 32,
                                    fillColor: Colors.white.withOpacity(0.5),
                                    border: Border.all(
                                        color: Colors.white, width: 1.5),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: BoxAppi(
                                        fillColor: Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(30),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              // Text
                                              RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                    text:
                                                        'Kickstart your journey! ',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: media(
                                                                context, 600)
                                                            ? 18
                                                            : 22),
                                                  ),
                                                  TextSpan(
                                                      text:
                                                          'Enter your details to begin',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: media(
                                                                  context,
                                                                  600)
                                                              ? 18
                                                              : 22))
                                                ]),
                                                textAlign: TextAlign.center,
                                              ),
                                              SizedBox(
                                                height: 40,
                                              ),

                                              // First Container
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.8,
                                                child: BoxAppi(
                                                    // fillColor: Colors.green,
                                                    height: 260,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets
                                                              .all(40),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceAround,
                                                        children: [
                                                          media(context, 710)
                                                              ? Column(
                                                                  children: [
                                                                    // Mobile No
                                                                    BtocCarInitialScreenMobileNoWidget(),
                                                                    SizedBox(
                                                                        height:
                                                                            12),
                                                                    // Email Id
                                                                    BtocCarInitialScreenEmailIdWidget(),
                                                                  ],
                                                                )
                                                              : Row(
                                                                  children: [
                                                                    // Mobile No
                                                                    Expanded(
                                                                        child:
                                                                            BtocCarInitialScreenMobileNoWidget()),
                                                                    SizedBox(
                                                                      width: media(context,
                                                                              800)
                                                                          ? 30
                                                                          : 60,
                                                                    ),

                                                                    // Email Id
                                                                    Expanded(
                                                                        child:
                                                                            BtocCarInitialScreenEmailIdWidget()),
                                                                  ],
                                                                ),
                                                          // Proceed Button
                                                          BtocCarInitialScreenButtonWidget(),
                                                        ],
                                                      ),
                                                    )),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 50),
                        child: BtocCarInitialScreenBigContainerWidget(),
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
