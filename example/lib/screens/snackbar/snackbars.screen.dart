import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class SnackBarScreen extends StatefulWidget {
  const SnackBarScreen({super.key});

  @override
  State<SnackBarScreen> createState() => _SnackBarScreenState();
}

class _SnackBarScreenState extends State<SnackBarScreen> {
  bool isComic = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: isComic ? ComicTheme.of(context) : SleekTheme.of(context),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('SnackBars'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Wrap(
              children: [
                Theme(
                  data: ComicTheme.of(context),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isComic = true;
                        ScaffoldMessenger.of(context).hideCurrentSnackBar(
                            reason: SnackBarClosedReason.hide);
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('This is a Comic SnackBar'),
                          margin: EdgeInsets.all(24),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    },
                    child: const Text('Comic Style Snackbar'),
                  ),
                ),
                Theme(
                  data: SleekTheme.of(context),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isComic = false;
                        ScaffoldMessenger.of(context).hideCurrentSnackBar(
                            reason: SnackBarClosedReason.hide);
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('This is a Sleek SnackBar'),
                          margin: EdgeInsets.all(24),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    },
                    child: const Text('Comic Style Snackbar'),
                  ),
                ),
                // ElevatedButton(
                //   onPressed: () => Navigator.of(context).push(
                //     MaterialPageRoute(
                //       builder: (_) => const ComicSnackBarsScreen(),
                //     ),
                //   ),
                //   child: const Text('Comic Style Snackbar'),
                // ),
                // ElevatedButton(
                //   onPressed: () => Navigator.of(context).push(
                //     MaterialPageRoute(
                //       builder: (_) => const SleekSnackBarScreen(),
                //     ),
                //   ),
                //   child: const Text('Sleek Style Snackbar'),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
