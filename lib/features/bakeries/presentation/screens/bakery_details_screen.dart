import 'package:bakery/core/presentation/resources/color_manager.dart';
import 'package:bakery/core/presentation/resources/values_manager.dart';
import 'package:bakery/core/presentation/widgets/error_indicator.dart';
import 'package:bakery/core/presentation/widgets/loading_indicator.dart';
import 'package:bakery/core/presentation/widgets/rating_widget.dart';
import 'package:bakery/features/bakeries/presentation/cubit/bakeries_cubit.dart';
import 'package:bakery/features/bakeries/presentation/cubit/bakeries_state.dart';
import 'package:bakery/features/bakeries/presentation/widgets/product_item.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BakeryDetailsScreen extends StatefulWidget {
  const BakeryDetailsScreen();

  @override
  State<BakeryDetailsScreen> createState() => _BakeryDetailsScreenState();
}

class _BakeryDetailsScreenState extends State<BakeryDetailsScreen> {
  late String _bakeryId;
  late TextTheme _textTheme;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _bakeryId = ModalRoute.of(context)!.settings.arguments! as String;
    BlocProvider.of<BakeriesCubit>(context).getBakery(_bakeryId);
    _textTheme = Theme.of(context).textTheme;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BakeriesCubit, BakeriesState>(
        builder: (context, state) {
          return state.maybeWhen(
            getBakeryDetailsLoading: () => const LoadingIndicator(),
            getBakeryDetailsError: () => const ErrorIndicator(),
            getBakeryDetailsSuccess: (bakery) => Column(
              children: [
                Stack(
                  children: [
                    CachedNetworkImage(
                      imageUrl: bakery.imageUrl,
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.height * .3,
                      width: double.infinity,
                    ),
                    Positioned(
                      top: Sizes.s40,
                      left: Sizes.s16,
                      child: InkWell(
                        onTap: Navigator.of(context).pop,
                        child: const CircleAvatar(
                          radius: Sizes.s20,
                          backgroundColor: ColorManager.white,
                          child: Icon(
                            Icons.arrow_back,
                            color: ColorManager.black,
                            size: Sizes.s28,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: Insets.l),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: Sizes.s16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              bakery.name,
                              style: _textTheme.titleLarge,
                            ),
                            Rating(bakery.rating),
                          ],
                        ),
                        const SizedBox(height: Sizes.s12),
                        Text(
                          bakery.description,
                          style: _textTheme.bodyLarge,
                        ),
                        Expanded(
                          child: ListView.separated(
                            itemBuilder: (context, index) => ProductItem(
                              bakery.products![index],
                            ),
                            itemCount: bakery.products!.length,
                            physics: const BouncingScrollPhysics(),
                            separatorBuilder: (_, __) => const Divider(
                              color: ColorManager.lightGrey,
                              height: Sizes.s32,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            orElse: () => const SizedBox.expand(),
          );
        },
      ),
    );
  }
}
