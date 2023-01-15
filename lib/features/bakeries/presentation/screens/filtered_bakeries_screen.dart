import 'package:bakery/features/bakeries/presentation/widgets/bakeries_list.dart';
import 'package:bakery/features/bakeries/presentation/widgets/filter_bakeries_alert.dart';
import 'package:bakery/generated/l10n.dart';
import 'package:flutter/material.dart';

class FilteredBakeriesScreen extends StatefulWidget {
  const FilteredBakeriesScreen();

  @override
  State<FilteredBakeriesScreen> createState() => _FilteredBakeriesScreenState();
}

class _FilteredBakeriesScreenState extends State<FilteredBakeriesScreen> {
  late FilteredBakeriesArguments _args;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _args = ModalRoute.of(context)!.settings.arguments!
        as FilteredBakeriesArguments;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${S.current.bakeriesWithin} ${_args.rangeText} ${S.current.km}',
        ),
      ),
      body: _args.filteredBakeries.isEmpty
          ? Center(
              child: Text(
                S.current.noBakeriesWithinThisRange,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            )
          : BakeriesList(_args.filteredBakeries),
    );
  }
}
