import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Privacy Policy',

          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 24,
            color: Color(0xff1B1E28),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text(
              '1.Types of Data We Collect',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Color(0xff1B1E28),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Lorem ösurn st cmsectetur elit. sed do «np« ut labore et dobro all cpa ut erum Odrnrw•n veyarn guts rustrud exeotanm ut dicru•p ex eo coo-rodo consemnt ute •rue repreherdent in vet esse cilium chlore eu "Oat nulla pariatur Excepte..r occc»cat QOidatat ron in culpa qu officia deserunt mdljt mirr•. •d est laborum',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xff7D848D),
              ),
            ),
            SizedBox(height: 30),
            Text(
              '2. use Of Your Personal Data',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Color(0xff1B1E28),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Lorem ösurn st cmsectetur elit. sed do «np« ut labore et dobro all cpa ut erum Odrnrw•n veyarn guts rustrud exeotanm ut dicru•p ex eo coo-rodo consemnt ute •rue repreherdent in vet esse cilium chlore eu "Oat nulla pariatur Excepte..r occc»cat QOidatat ron in culpa qu officia deserunt mdljt mirr•. •d est laborum',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xff7D848D),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
