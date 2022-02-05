import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:flutter_svg/flutter_svg.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:percent_indicator/percent_indicator.dart';

class DatasSheet extends StatefulWidget {
  ScrollController scrollController;
  DatasSheet({Key? key, required this.scrollController}) : super(key: key);

  @override
  _DatasSheetState createState() => _DatasSheetState();
}

late String _hotelname;
late double rating;

List<Widget> hotelSpecialities_icons = [
  SvgPicture.asset('datas/icons/detail_page/fastfood.svg'),
  SvgPicture.asset('datas/icons/detail_page/camera.svg'),
  SvgPicture.asset('datas/icons/detail_page/coffee_shop.svg'),
  SvgPicture.asset('datas/icons/detail_page/spa.svg'),
  SvgPicture.asset('datas/icons/detail_page/gym.svg'),
  SvgPicture.asset('datas/icons/detail_page/fastfood.svg'),
  SvgPicture.asset('datas/icons/detail_page/coffee_shop.svg'),
];

List<Widget> hotelSpecialities_text = const [
  Text('24h Food'),
  Text('Cinema'),
  Text('Cafe'),
  Text('Spa'),
  Text('Gym'),
];

class _DatasSheetState extends State<DatasSheet> {
  @override
  Widget build(BuildContext context) {
    _hotelname = '    Samara Hotel';
    double starRating = 3.5; //number of Stars that the hotel officialy has
    int Price = 200;
    double usersRating = 0.856;
    int numberOfComments = 274;
    final _formKey = GlobalKey<FormState>();
    final TextEditingController commentController = TextEditingController();

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        controller: widget.scrollController,
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Column(children: [
            //__________________________________________________________________________________________________________________
            Row(
              children: [
                //------------------------------------------------------------------------------------------------------------
                Text(
                  _hotelname,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                //------------------------------------------------------------------------------------------------------------
                SmoothStarRating(
                  allowHalfRating: true,
                  starCount: starRating.ceil(),
                  rating: starRating,
                  size: 25.0,
                  isReadOnly: true,
                  filledIconData: Icons.star,
                  halfFilledIconData: Icons.star_half,
                  color: const Color(0xffE0CE26),
                  borderColor: const Color(0xffE0CE26),
                  spacing: 0.0,
                ),
                //------------------------------------------------------------------------------------------------------------
                SizedBox(width: MediaQuery.of(context).size.width * 0.13),
                ElevatedButton(
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(const Size(25, 25)),
                    shape: MaterialStateProperty.all(
                      const CircleBorder(),
                    ),
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xff31313B),
                    ),
                  ),
                  onPressed: () {},
                  child: const Image(
                    color: Colors.white,
                    image: AssetImage('datas/images/calendar.png'),
                  ),
                ),
                //------------------------------------------------------------------------------------------------------------
              ],
            ),
            const SizedBox(height: 10),
            //__________________________________________________________________________________________________________________
            Row(
              children: const [
                //------------------------------------------------------------------------------------------------------------
                Icon(Icons.location_on_outlined),
                //------------------------------------------------------------------------------------------------------------
                Text(
                  'paris ,22nd avenue ,renoire posiion, 125',
                  style: TextStyle(
                    color: Color(0xff545454),
                    fontSize: 18,
                  ),
                ),
                //------------------------------------------------------------------------------------------------------------
              ],
            ),
            //__________________________________________________________________________________________________________________
            const SizedBox(height: 30),
            //__________________________________________________________________________________________________________________
            SizedBox(
              height: 48,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: hotelSpecialities_icons.map((icon) => icon).toList(),
              ),
            ),
            //__________________________________________________________________________________________________________________
            const Padding(
              padding: EdgeInsets.fromLTRB(8, 30, 8, 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Describtion:',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xff2B2B2B),
                  ),
                ),
              ),
            ),
            //__________________________________________________________________________________________________________________
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 2,
              ),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mi sed mauris vel massa tristique fames. Fames est augue pellentesque vulputate et, tristique aliquet lectus. Non pharetra pharetra, phasellus ornare in. Duis nulla at commodo arcu eget donec vitae volutpat donec. Mattis dui volutpat nulla vitae, ut ultricies viverra elementum egestas.',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff6A6A6A),
                ),
              ),
            ),
            const SizedBox(height: 30),
            //__________________________________________________________________________________________________________________
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 2,
              ),
              child: Text(
                '_____________________________________________',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xffBEBEBE),
                ),
              ),
            ),
            const SizedBox(height: 30),
            //__________________________________________________________________________________________________________________
            Row(
              children: [
                //------------------------------------------------------------------------------------------------------------
                TextButton(
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(
                        const Size(220, 53),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xff363636),
                      )),
                  onPressed: () {},
                  child: const Text(
                    'Book Now !',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.12),
                //------------------------------------------------------------------------------------------------------------
                Text(
                  '$Price\$',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const Text(
                  '  per night',
                  style: TextStyle(
                      fontStyle: FontStyle.italic, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(height: 40),
            //__________________________________________________________________________________________________________________
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 18),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 28, 0, 5),
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: CircularPercentIndicator(
                        progressColor: Colors.grey[500],
                        backgroundColor: const Color(0xffDAD3D3),
                        arcType: ArcType.FULL,
                        radius: 100,
                        lineWidth: 15,
                        animation: true,
                        animationDuration: 1000,
                        percent: usersRating,
                        center: Text('${(usersRating * 100).round()} %'),
                      ),
                    ),
                  ),
                  //------------------------------------------------------------------------------------------------------------
                  Text('${(usersRating * 100).round()}% Like This Hotel')
                ],
              ),
            ),
            const SizedBox(height: 20),
            //__________________________________________________________________________________________________________________
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Comments  ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          //------------------------------------------------------------------------------------------------------------
                          Text(
                            '($numberOfComments)',
                            style: const TextStyle(
                              color: Color(0xff909090),
                            ),
                          ),
                          //------------------------------------------------------------------------------------------------------------
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            starRating.toString(),
                            style: const TextStyle(
                              color: Color(0xff909090),
                            ),
                          ),
                          //------------------------------------------------------------------------------------------------------------
                          const Icon(
                            Icons.star,
                            color: Color(0xffFFE600),
                            size: 18,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 1,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 10),
                          const CircleAvatar(
                            backgroundImage:
                                AssetImage('datas/images/datas_sheet/male.png'),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            '|',
                            style: TextStyle(
                                fontSize: 40,
                                color: Color(0xffECECEB),
                                fontWeight: FontWeight.w200),
                          ),
                          const SizedBox(width: 20),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. At ut morbi vel, dolor, bibendum eleifend non.'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //--------------------------------------------------------------------------------------
                Card(
                  elevation: 1,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 10),
                          const CircleAvatar(
                            backgroundImage: AssetImage(
                                'datas/images/datas_sheet/female.png'),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            '|',
                            style: TextStyle(
                                fontSize: 40,
                                color: Color(0xffECECEB),
                                fontWeight: FontWeight.w200),
                          ),
                          const SizedBox(width: 20),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. At ut morbi vel, dolor, bibendum eleifend non.'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //--------------------------------------------------------------------------------------
              ],
            )
          ]);
        },
      ),
    );
  }
}
