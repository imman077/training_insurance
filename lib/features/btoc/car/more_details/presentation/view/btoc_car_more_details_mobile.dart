part of "btoc_car_more_details_screen.dart";

class BtocCarMoreDetailsMobile extends ConsumerWidget {
  const BtocCarMoreDetailsMobile({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Form(
      key: ref.read(btocCarMoreDetailsFormKeyProvider),
      child: SizedBox(
        width: double.maxFinite,
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
              primary: true,
              physics: ref.watch(physicsProvider_),
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20, horizontal: 25),
                  child: Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 550),
                      child: Column(
                        children: [
                          TextAppi(
                            text: 'Please give us more details',
                            textStyle: Style(
                                $text.color(
                                  Color(0xff151515),
                                ),
                                media(context, 600) ? $text.fontSize(16) :
                                $text.fontSize(20),
                                $text.fontWeight(FontWeight.w600)),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              spacing: 15,
                              children: [
                                BtocCarMoreDetailsTopContainerWidget(),
                                BtocCarMoreDetailsSelectionContainerWidget(),
                                BtocCarMoreDetailsMakeDropdownWidget(),
                                BtocCarMoreDetailsModelDropdownWidget(),
                                BtocCarMoreDetailsModelYearDropdownWidget(),
                                BtocCarMoreDetailsModelCylindersWidget(),
                                BtocCarMoreDetailsBodyTypeWidget(),
                                BtocCarMoreDetailsSeatingCapacityWidget(),
                                BtocCarMoreDetailsUsageWidget(),
                                BtocCarMoreDetailsFirstRegistrationYearWidget(),
                                BtocCarMoreDetailsVehicleValueWidget(),
                                BtocCarMoreDetailsNextButtonWidget(),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ))),
        ),
      ),
    );
  }
}
