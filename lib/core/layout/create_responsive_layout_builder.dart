import "package:appikorn_madix_widgets/statefull_wrapper_appi/statefull_wrapper_appi.dart";
import "package:flutter/material.dart";
import "package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class ResponsiveLayout extends ConsumerWidget {
  const ResponsiveLayout({super.key, this.mobileView, this.tabletView, this.webView, this.showRail = true, this.showNavBar = true, this.onInit, this.didChangeDependencies, this.onDispose});

  final Widget? mobileView;
  final Widget? tabletView;
  final Widget? webView;
  final bool showRail;
  final bool showNavBar;
  final void Function(WidgetRef ref)? onInit;
  final void Function(WidgetRef ref)? onDispose;
  final void Function(WidgetRef ref)? didChangeDependencies;

  @override
  Widget build(BuildContext context, ref) {
    return StatefulWrapperAppi(
      onInit: () {
        if (onInit != null) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            onInit!(ref);
          });
        }
      },
      onDispose: () {
        if (onDispose != null) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            onDispose!(ref);
          });
        }
      },
      didChangeDependencies: () {
        if (didChangeDependencies != null) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            didChangeDependencies!(ref);
          });
        }
      },
      child: AdaptiveLayout(
        transitionDuration: const Duration(milliseconds: 300),
        primaryNavigation: SlotLayout(
          config: <Breakpoint, SlotLayoutConfig>{
            //Desktop View
            Breakpoints.largeDesktop: SlotLayout.from(
              inAnimation: AdaptiveScaffold.leftOutIn,
              key: const Key('Primary Navigation Medium'),
              // builder: (_) => MenuSystem().railMenu(context: context),
              builder: showRail
                  ? (_) {
                      return Container(
                        width: 0,
                      );
                    }
                  : null,
            ),

            Breakpoints.extraLargeDesktop: SlotLayout.from(
              inAnimation: AdaptiveScaffold.leftOutIn,
              key: const Key('Primary Navigation Medium'),
              // builder: (_) => MenuSystem().railMenu(context: context),
              builder: showRail
                  ? (_) {
                      return Container(
                        width: 0,
                      );
                    }
                  : null,
            ),
          },
        ),

        body: SlotLayout(
          config: <Breakpoint, SlotLayoutConfig>{
            Breakpoints.small: SlotLayout.from(key: const Key('Body Small'), builder: (_) => mobileView ?? const Text("Mobile view")),
            Breakpoints.mediumAndUp: SlotLayout.from(key: const Key('Body '
                'Medium'), builder: (_) => tabletView ?? const Text("Tablet view")),
            Breakpoints.largeDesktop: SlotLayout.from(key: const Key('Body Large'), builder: (_) => webView ?? const Text("Desktop view")),
            Breakpoints.extraLargeDesktop: SlotLayout.from(key: const Key('Body Large'), builder: (_) => webView ?? const Text("Desktop view")),
          },
        ),
        // bottomNavigation: SlotLayout(
        // config: <Breakpoint, SlotLayoutConfig>{Breakpoints.small: SlotLayout.from(key: const Key('Bottom Navigation Small'), builder: (context) => MenuSystem().bottomMenu(context: context))},
        // ),
        topNavigation: SlotLayout(
          config: <Breakpoint, SlotLayoutConfig>{
            Breakpoints.largeDesktop: SlotLayout.from(
              key: const Key('Bottom Navigation Small'),
              builder: showNavBar ? (_) => Material(child: SizedBox(height: 0, child: Placeholder())) : null,
            ),

            //extralarge
            Breakpoints.extraLarge: SlotLayout.from(
              key: const Key('Bottom Navigation Small'),
              builder: showNavBar ? (_) => Material(child: SizedBox(height: 0, child: Placeholder())) : null,
            ),
          },
        ),
      ),
    );
  }
}
