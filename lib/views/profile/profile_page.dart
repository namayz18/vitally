import 'package:flutter/material.dart';
import 'package:vitally/core/extensions/theme_colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<String> keywords = [
    'Swift',
    'IOS',
    'Mobile App Devunopoent',
    'Java',
    'android',
    'Adobg XD',
    'UI / UX Desygn',
    'Python',
    'MicrOsoft Office'
  ];

  List<String> sections = [
    'Ref%renae',
    'gLanguagd',
    'Hobbmes',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Profile',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Chris Hemsworth',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text(
              'UI / UX Designer',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Personal details',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            getProfileDetailsItem(context),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Employment',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            getEmploymentList(context),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Education',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            getEducationList(context),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Skills',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            getKeywordItem(context),
          ],
        ),
      ),
    );
  }

  Widget getProfileDetailsItem(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.phone,
                    size: 20,
                    color: context.primary,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text('+6!23232323'),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    size: 20,
                    color: context.primary,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text('abc@gmail.com'),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 20,
                    color: context.primary,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text('Sydney, NSW, Australia'),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget getAddSkills(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Please add your skills',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => AddSkillPage(),
            //   ),
            // );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 40,
              child: Center(
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                      color: context.primary,
                    ),
                  ),
                  child: Icon(
                    Icons.add,
                    color: context.primary,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget getKeywordItem(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        child: Wrap(
          direction: Axis.horizontal,
          children: getKeywordListings(context),
        ),
      ),
    );
  }

  List<Widget> getKeywordListings(BuildContext context) {
    List<Widget> listings = [];
    for (int i = 0; i < keywords.length; i++) {
      listings.add(
        Container(
          margin: const EdgeInsets.only(left: 5, right: 5),
          child: InkWell(
            child: Chip(
              elevation: 1.0,
              backgroundColor: context.primary,
              label: Text(
                keywords[i],
                style: TextStyle(color: context.onSecondary),
              ),
            ),
          ),
        ),
      );
    }
    return listings;
  }

  Widget getEmploymentList(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "UI / UX Designer",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Google",
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Jan 2020 - Sep 2020",
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Developed 7+ apps with the Ekbana mobile teams.",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }

  Widget addEmploymentItem(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Please add your some experience',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => AddEmploymentDetailPage(),
            //   ),
            // );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 40,
              child: Center(
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                      color: context.primary,
                    ),
                  ),
                  child: Icon(
                    Icons.add,
                    color: context.primary,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget getEducationList(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 1,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Master in Information Technology",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "CQU university",
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Jan 2020 - Sep 2020",
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Did master in CQU",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }

  getAddEducationItem(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Please add your education',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => AddEducationDetailPage(),
            //   ),
            // );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 40,
              child: Center(
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                      color: context.primary,
                    ),
                  ),
                  child: Icon(
                    Icons.add,
                    color: context.primary,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget getAddSectionItem(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: sections.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        // sectionsIcons[index],
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          sections[index],
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Container(
                      child: Center(
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                              color: context.primary,
                            ),
                          ),
                          child: Icon(
                            Icons.add,
                            color: context.primary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
