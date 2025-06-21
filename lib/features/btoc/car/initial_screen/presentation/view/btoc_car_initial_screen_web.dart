part of "btoc_car_initial_screen_screen.dart";

class BtocCarInitialScreenWeb extends ConsumerWidget {
  const BtocCarInitialScreenWeb({super.key});

  @override
  Widget build(BuildContext context, ref) {
    print('--- ${MediaQuery.of(context).size.width}');

    return Form(
      key: ref.read(btocCarInitialScreenFormKeyProvider),
      child: SizedBox(
        width: double.maxFinite,
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
              primary: true,
              clipBehavior: Clip.none,
              physics: ref.watch(physicsProvider_),
              // Outside First BoxAppi
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: 1400,
                    ),
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
                                      left: 60,
                                      child: Image.asset(
                                        'assets/images/overlay_img'
                                        '.png',
                                        height: 450,
                                        width: 600,
                                        fit: BoxFit.cover,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 70),
                                    child: SizedBox(
                                      width: media(context, 1240) ? 500 : 580,
                                      child: BoxAppi(
                                        radius: 32,
                                        fillColor:
                                            Colors.white.withOpacity(0.5),
                                        border: Border.all(
                                            color: Colors.white, width: 1.5),
                                        child: SizedBox(
                                          width: 750,
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
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 22)),
                                                      TextSpan(
                                                          text: 'Enter your '
                                                              'details to begin',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 22))
                                                    ]),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  SizedBox(
                                                    height: 40,
                                                  ),

                                                  // First Container
                                                  BoxAppi(
                                                      // fillColor: Colors.green,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                vertical: 40,
                                                                horizontal: 10),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                // Mobile No
                                                                Expanded(
                                                                    child:
                                                                        BtocCarInitialScreenMobileNoWidget()),
                                                                SizedBox(
                                                                  width: 40,
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
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, bottom: 50),
                                child: BtocCarInitialScreenBigContainerWidget(),
                              ),
                              Positioned(
                                  right: media(context, 1240)
                                      ? -40
                                      : media(context, 1300)
                                          ? -80
                                          : media(context, 1400)
                                              ? -60
                                              : 20,
                                  top: media(context, 1300)
                                      ? -380
                                      : media(context, 1400)
                                          ? -100
                                          : -380,
                                  child: Image.asset(
                                    'assets/images/car_blinking_gif.webp',
                                    fit: BoxFit.fitWidth,
                                    repeat: ImageRepeat.repeatX,
                                    height: media(context, 1300)
                                        ? 550
                                        : media(context, 1400)
                                            ? -100
                                            : 550,
                                    width: media(context, 1300)
                                        ? 600
                                        : media(context, 1400)
                                            ? -100
                                            : 600,
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
