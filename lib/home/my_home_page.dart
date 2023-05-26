import 'package:flutter/material.dart';
import 'package:q_wallet/home/widget/svg_picture_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "자유톡",
          style: TextStyle(
            color: Color(
              0xFF1D232B,
            ),
            fontSize: 18,
            fontFamily: "Noto Sans",
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(
              right: 16.0,
            ),
            child: SvgPictureWidget(
              imagePath: "assets/bell.svg",
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            profileWidget(),
            const SizedBox(
              height: 18.0,
            ),
            title1(),
            const SizedBox(
              height: 16.0,
            ),
            title2(),
          const  SizedBox(
              height: 16.0,
            ),
            tabSelection(),
          const  SizedBox(
              height: 16.0,
            ),
            Image.asset(
              "assets/image.jpg",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.50,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 12.0,
            ),
            socialMedia(),
          const  SizedBox(
              height: 17.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 2,
              child:const Divider(
                height: 2,
                thickness: 2,
                color: Color(
                  0xFFF7F8FA,
                ),
              ),
            ),
           const SizedBox(
              height: 8.0,
            ),
            Profile2(),
            const SizedBox(
              height: 8.0,
            ),
            Profile3(),
            const SizedBox(
              height: 8.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 2,
              child: const Divider(
                height: 2,
                thickness: 2,
                color: Color(
                  0xFFF7F8FA,
                ),
              ),
            ),
            chatWidget(),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  chatWidget() {
    return const Padding(
      padding: EdgeInsets.only(
        left: 16.0,
        right: 16.0,
      ),
      child: Row(
        children: [
          SvgPictureWidget(
            imagePath: "assets/imagesmode.svg",
          ),
          Text(
            "댓글을 남겨주세요.",
            style: TextStyle(
              color: Color(
                0xFFAfB9CA,
              ),
              fontSize: 12,
              fontFamily: "Noto Sans",
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Text(
            '등록',
            style: TextStyle(
              color: Color(
                0xFF919EB6,
              ),
              fontSize: 12,
              fontFamily: "Noto Sans",
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }

  profileWidget() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 14.0,
        right: 14.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/profile.png'),
          ),
           const SizedBox(
            width: 2.7,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "안녕 나 응애 ",
                style: TextStyle(
                  color: Color(
                    0xFF1D232B,
                  ),
                  fontSize: 14,
                  fontFamily: "Noto Sans",
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "165cm .53kg",
                style: TextStyle(
                  color: Color(
                    0xFF919EB6,
                  ),
                  fontSize: 12,
                  fontFamily: "Noto Sans",
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
           const SizedBox(
            width: 5.0,
          ),
          const SvgPictureWidget(imagePath: "assets/verify.svg"),
          const Text(
            "1일전",
            style: TextStyle(
              color: Color(
                0xFF919EB6,
              ),
              fontSize: 10,
              fontFamily: "Noto Sans",
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          Container(
            width: 58,
            height: 24,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(
                0xFF01B99F,
              ),
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            child: const Text(
              '팔로우',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
                fontFamily: "Noto Sans",
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }

  Profile2() {
    return const Padding(
      padding: EdgeInsets.only(
        left: 14.0,
        right: 14.0,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/profile.png'),
              ),
              SizedBox(
                width: 5.0,
              ),
              Text(
                "안녕 나 응애 ",
                style: TextStyle(
                  color: Color(
                    0xFF1D232B,
                  ),
                  fontSize: 14,
                  fontFamily: "Noto Sans",
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 5.0,
              ),
              SvgPictureWidget(imagePath: "assets/verify.svg"),
              SizedBox(
                width: 3.0,
              ),
              Text(
                "1일전",
                style: TextStyle(
                  color: Color(
                    0xFF919EB6,
                  ),
                  fontSize: 10,
                  fontFamily: "Noto Sans",
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              SvgPictureWidget(
                imagePath: 'assets/more.svg',
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 58.0,
              right: 16.0,
            ),
            child: Text(
              "어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭 우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니꼭 봐주세용~!",
              style: TextStyle(
                color: Color(
                  0xFF313B49,
                ),
                fontSize: 12,
                fontFamily: "Noto Sans",
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: EdgeInsets.only(left: 58.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPictureWidget(
                  imagePath: "assets/heart.svg",
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "5",
                  style: TextStyle(
                    color: Color(
                      0xFF919EB6,
                    ),
                    fontSize: 9.3,
                    fontFamily: "Noto Sans",
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                SvgPictureWidget(
                  imagePath: "assets/chat.svg",
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "5",
                  style: TextStyle(
                    color: Color(
                      0xFF919EB6,
                    ),
                    fontSize: 9.3,
                    fontFamily: "Noto Sans",
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Profile3() {
    return const Padding(
      padding: EdgeInsets.only(
        left: 58.0,
        right: 14.0,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/profile.png'),
              ),
              SizedBox(
                width: 2.7,
              ),
              Text(
                "ㅇㅅㅇ",
                style: TextStyle(
                  color: Color(
                    0xFF1D232B,
                  ),
                  fontSize: 14,
                  fontFamily: "Noto Sans",
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                width: 5.0,
              ),
              Text(
                "1일전",
                style: TextStyle(
                  color: Color(
                    0xFF919EB6,
                  ),
                  fontSize: 10,
                  fontFamily: "Noto Sans",
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              SvgPictureWidget(
                imagePath: 'assets/more.svg',
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 58.0,
              right: 16.0,
            ),
            child: Text(
              "오 대박! 라이브 리뷰 오늘 올라온대요? 챙겨봐야겠다",
              style: TextStyle(
                color: Color(
                  0xFF313B49,
                ),
                fontSize: 12,
                fontFamily: "Noto Sans",
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: EdgeInsets.only(left: 58.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPictureWidget(
                  imagePath: "assets/heart.svg",
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "5",
                  style: TextStyle(
                    color: Color(
                      0xFF919EB6,
                    ),
                    fontSize: 9.3,
                    fontFamily: "Noto Sans",
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  title1() {
    return const Text(
      "지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?",
      style: TextStyle(
        color: Color(
          0xFF1D232B,
        ),
        fontSize: 14,
        fontFamily: "Noto Sans",
        fontWeight: FontWeight.w700,
      ),
      textAlign: TextAlign.left,
    );
  }

  title2() {
    return const Padding(
      padding: EdgeInsets.only(
        left: 16.0,
        right: 16.0,
      ),
      child: Text(
        "지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아 '+'\n'+ 혹시 어떤 상품이 제일 괜찮았어'+'\n'+ 후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이 '+'\n'+ 제일 재밌었다던데 맞아'+'\n'+ 올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가'+'\n'+ 아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에'+'\n'+ 있었던 팝들 있으면 어땠는지 후기 좀 공유해주라",
        style: TextStyle(
          color: Color(
            0xFF313B49,
          ),
          fontSize: 12,
          fontFamily: "Noto Sans",
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  tabSelection() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
      ),
      child: Wrap(
        spacing: 8,
        runSpacing: 10,
        children: [
          Container(
            width: 59,
            height: 22,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(
                0xFFCED3DE,
              ),
              borderRadius: BorderRadius.circular(
                999,
              ),
            ),
            child: const Text(
              "#2023",
              style: TextStyle(
                color: Color(
                  0xFF5A6B87,
                ),
                fontSize: 12,
                fontFamily: "Noto Sans",
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            width: 150,
            height: 22,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              // ignore: prefer_const_constructors
              color: Color(
                0xFFCED3DE,
              ),
              borderRadius: BorderRadius.circular(
                999,
              ),
            ),
            child: const Text(
              "#TODAYISMONDAY",
              style: TextStyle(
                color: Color(
                  0xFF5A6B87,
                ),
                fontSize: 12,
                fontFamily: "Noto Sans",
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            width: 59,
            height: 22,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(
                0xFFCED3DE,
              ),
              borderRadius: BorderRadius.circular(
                999,
              ),
            ),
            child: const Text(
              "#TOP",
              style: TextStyle(
                color: Color(
                  0xFF5A6B87,
                ),
                fontSize: 12,
                fontFamily: "Noto Sans",
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            width: 59,
            height: 22,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(
                0xFFCED3DE,
              ),
              borderRadius: BorderRadius.circular(
                999,
              ),
            ),
            child: const Text(
              "#POPS!",
              style: TextStyle(
                color: Color(
                  0xFF5A6B87,
                ),
                fontSize: 12,
                fontFamily: "Noto Sans",
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            width: 59,
            height: 22,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(
                0xFFCED3DE,
              ),
              borderRadius: BorderRadius.circular(
                999,
              ),
            ),
            child: const Text(
              "#WOW",
              style: TextStyle(
                color: Color(
                  0xFF5A6B87,
                ),
                fontSize: 12,
                fontFamily: "Noto Sans",
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            width: 59,
            height: 22,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(
                0xFFCED3DE,
              ),
              borderRadius: BorderRadius.circular(
                999,
              ),
            ),
            child: const Text(
              "#ROW",
              style: TextStyle(
                color: Color(
                  0xFF5A6B87,
                ),
                fontSize: 12,
                fontFamily: "Noto Sans",
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }

  socialMedia() {
    return const Padding(
      padding: EdgeInsets.only(
        left: 16.0,
        right: 16.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPictureWidget(
            imagePath: "assets/heart.svg",
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "5",
            style: TextStyle(
              color: Color(
                0xFF919EB6,
              ),
              fontSize: 9.3,
              fontFamily: "Noto Sans",
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          SvgPictureWidget(
            imagePath: "assets/chat.svg",
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "5",
            style: TextStyle(
              color: Color(
                0xFF919EB6,
              ),
              fontSize: 9.3,
              fontFamily: "Noto Sans",
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          SvgPictureWidget(
            imagePath: "assets/bookmark.svg",
          ),
          SizedBox(
            width: 30.0,
          ),
          SvgPictureWidget(
            imagePath: "assets/more.svg",
          ),
        ],
      ),
    );
  }
}
