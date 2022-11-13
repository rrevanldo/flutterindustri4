import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
          itemNews()
        ]),
    );
  }

  Widget itemNews() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 6,
        child: IntrinsicHeight(
          child: InkWell(
            onTap: () {
              const snackBar = SnackBar(content: Text("Item Clicked!"));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'img/gunung.jpg',
                  width: 50,
                  fit: BoxFit.fitHeight,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "News",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: 
                          Theme.of(context).textTheme.subtitle1,
                        ),
                        Text(
                          "Description",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2
                              ?.copyWith(color: Colors.orange),
                        )
                      ],
                    ),
                  )
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}