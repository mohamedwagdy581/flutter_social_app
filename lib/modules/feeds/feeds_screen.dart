import 'package:flutter/material.dart';
import 'package:maintenance/shared/style/custom_icons.dart';

class FeedsScreen extends StatelessWidget {
  const FeedsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Card(
            elevation: 5.0,
            margin: const EdgeInsets.all(8.0),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                const Image(
                  image: NetworkImage(
                    'https://img.freepik.com/free-photo/surprised-woman-looks-with-great-interest-aside-raise-index-finger-holds-breath-from-amazement-wears-basic-jumper-breaks-through-paper-wall-recalls-necessary-information_273609-47874.jpg?t=st=1656482181~exp=1656482781~hmac=c0472d65222cf501c68d69c110b17a109a5d590b5b5f9886351493b031591b58&w=1380',
                  ),
                  fit: BoxFit.cover,
                  height: 200.0,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Communicate with friends',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) => buildPostItem(context),
            separatorBuilder: (context, index) => const SizedBox(
              height: 10.0,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
        ],
      ),
    );
  }

  Widget buildPostItem(context) => Card(
        elevation: 5.0,
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://img.freepik.com/free-photo/indecisive-girl-picks-from-two-choices-looks-questioned-troubled-crosses-hands-across-chest-hesitates-suggested-products-wears-yellow-t-shirt-isolated-crimson-wall_273609-42552.jpg?w=1380'),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Mohamed Wagdy',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                height: 1.4,
                              ),
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Icon(
                              Icons.check_circle,
                              color: Colors.blue,
                              size: 16.0,
                            ),
                          ],
                        ),
                        Text(
                          'January 21,2022 at 3:24 pm',
                          style: Theme.of(context)
                              .textTheme
                              .caption
                              ?.copyWith(height: 1.4),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz,
                      size: 18.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Divider(
                  thickness: 1.0,
                  color: Colors.grey[300],
                ),
              ),
              Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                  bottom: 8.0,
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Wrap(
                    children: [
                      customHashText(
                        text: '#Software',
                        onPressed: () {},
                      ),
                      customHashText(
                        text: '#Flutter',
                        onPressed: () {},
                      ),
                      customHashText(
                        text: '#IOS',
                        onPressed: () {},
                      ),
                      customHashText(
                        text: '#Android',
                        onPressed: () {},
                      ),
                      customHashText(
                        text: '#Web',
                        onPressed: () {},
                      ),
                      customHashText(
                        text: '#Development',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 160.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://img.freepik.com/free-photo/positive-african-american-girl-points-thumb-demonstrates-copy-space-blank-pink-wall-has-happy-friendly-expression-dressed-casually-poses-indoor-suggests-going-right-says-follow-this-direction_273609-42167.jpg?t=st=1656558230~exp=1656558830~hmac=3573a72d95be0a8b42285132ac7cc523b88924587697ed45fea60d7302aa6d2e&w=1380',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: InkWell(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 5.0,
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.favorite_border,
                                size: 17.0,
                                color: Colors.red,
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                '120',
                                style: Theme.of(context).textTheme.caption,
                              ),
                            ],
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 5.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Icon(
                                CustomIcons.chat,
                                size: 17.0,
                                color: Colors.amber,
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                '520 comments',
                                style: Theme.of(context).textTheme.caption,
                              ),
                            ],
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 8.0,
                ),
                child: Divider(
                  thickness: 1.0,
                  color: Colors.grey[300],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 18,
                            backgroundImage: NetworkImage(
                                'https://img.freepik.com/free-photo/indecisive-girl-picks-from-two-choices-looks-questioned-troubled-crosses-hands-across-chest-hesitates-suggested-products-wears-yellow-t-shirt-isolated-crimson-wall_273609-42552.jpg?w=1380'),
                          ),
                          const SizedBox(
                            width: 15.0,
                          ),
                          Text(
                            'write a comment...',
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ],
                      ),
                      onTap: () {},
                    ),
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5.0,
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.favorite_border,
                            size: 17.0,
                            color: Colors.red,
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'Like',
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                ?.copyWith(fontSize: 13.5),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  Widget customHashText({
    required String text,
    required VoidCallback onPressed,
  }) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 6.0),
      child: SizedBox(
        height: 20.0,
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 1.0,
          padding: EdgeInsets.zero,
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 14.0,
            ),
            //Theme.of(context).textTheme.caption?.copyWith(color: Colors.blue,),
          ),
        ),
      ),
    );
  }
}
