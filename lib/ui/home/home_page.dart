import 'package:flutter/material.dart';
import 'package:movie_booking_app/ui/common/section_see_all.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: const [
            _Header(),
            _SearchBar(),
            _PlayingNow(),
            _ComingSoonList(),
            _PromoAndDiscount(),
            _Services(),
            _MovieNew(),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Welcome back',
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        hintText: 'Search',
        prefixIcon: Icon(Icons.search),
      ),
    );
  }
}

class _PlayingNow extends StatelessWidget {
  const _PlayingNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          SectionSeeAll(
            title: 'Now playing',
            onTapSeeAll: () {},
          ),
          SizedBox(
            height: 440,
            width: 330,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://m.media-amazon.com/images/M/MV5BNGE0YTVjNzUtNzJjOS00NGNlLTgxMzctZTY4YTE1Y2Y1ZTU4XkEyXkFqcGc@._V1_.jpg',
              ),
            ),
          ),
          const SizedBox(height: 16),
          Column(
            children: [
              const Text(
                'Avengers',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              const Text(
                '2h29m • Action, adventure, sci-fi',
                style: TextStyle(color: Color(0xffBFBFBF), fontSize: 16),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.yellow[700]),
                  const Text('4.8', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700)),
                  const Text('(1.222)', style: TextStyle(color: Color(0xffBFBFBF))),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class _ComingSoonList extends StatelessWidget {
  const _ComingSoonList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 420,
      child: Column(
        children: [
          SectionSeeAll(
            title: 'Coming Soon',
            onTapSeeAll: () {},
          ),
          const SizedBox(height: 24),
          Expanded(
            child: ListView.separated(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const SizedBox(width: 16),
              itemBuilder: (context, index) {
                return const _ComingSoonItem();
              },
            ),
          )
        ],
      ),
    );
  }
}

class _ComingSoonItem extends StatelessWidget {
  const _ComingSoonItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 343,
      width: 173,
      child: Column(
        children: [
          SizedBox(
            width: 173,
            height: 244,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://m.media-amazon.com/images/M/MV5BNGE0YTVjNzUtNzJjOS00NGNlLTgxMzctZTY4YTE1Y2Y1ZTU4XkEyXkFqcGc@._V1_.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Avatar 2: The Way Of Water',
                  maxLines: 2,
                  style: TextStyle(fontSize: 16, color: Colors.amber, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                      size: 16,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Adventure, Sci-fi',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_month,
                        color: Colors.white,
                        size: 16,
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          '2h29m • Action, adventure, sci-fi',
                          maxLines: 2,
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PromoAndDiscount extends StatelessWidget {
  const _PromoAndDiscount({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(children: [
        SectionSeeAll(
          title: 'Promo & Discount',
          onTapSeeAll: () {},
        ),
        const SizedBox(height: 24),
        Image.asset('assets/images/promo_discount.png'),
      ]),
    );
  }
}

class _Services extends StatelessWidget {
  const _Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      margin: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          SectionSeeAll(
            title: 'Services',
            onTapSeeAll: () {},
          ),
          const SizedBox(height: 8),
          Expanded(
            child: ListView.separated(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const SizedBox(width: 24),
              itemBuilder: (context, index) {
                return const SizedBox(
                  height: 111,
                  width: 81,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(radius: 40),
                      Text(
                        'Retal',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _MovieNew extends StatelessWidget {
  const _MovieNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 239,
      height: 250,
      margin: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          SectionSeeAll(title: 'Movie new', onTapSeeAll: () {}),
          const SizedBox(height: 8),
          Expanded(
            child: ListView.separated(
              itemCount: 10,
              separatorBuilder: (_, __) => const SizedBox(width: 16),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const _MovieNewItem();
              },
            ),
          )
        ],
      ),
    );
  }
}

class _MovieNewItem extends StatelessWidget {
  const _MovieNewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 239,
      height: 186,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 239,
            height: 135,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset('assets/images/batman.png'),
            ),
          ),
          const Text(
            'When The Batman 2 Starts Filming Reportedly Revealed',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
