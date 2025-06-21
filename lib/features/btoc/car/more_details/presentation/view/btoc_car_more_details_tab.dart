part of "btoc_car_more_details_screen.dart";

class BtocCarMoreDetailsTab extends ConsumerWidget {
  const BtocCarMoreDetailsTab({super.key});

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
                  padding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                  child: Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 550),
                      child: Column(
                        children: [
                          cardLayout(
                            context: context,
                            path: '/btoc_car_ocr_screen',
                            title: 'Please give us more details',
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                spacing: 20,
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
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))),
        ),
      ),
    );
  }
}
