import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _onBasicAlertPressed(context) {
      Alert(
        context: context,
        title: '',
        desc: "هل أنت متأكد أنك تريد تسجيل الخروج من التطبيق",
        buttons: [
          DialogButton(
            child: Text(
              "نعم",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            onPressed: () => Navigator.pop(context),
            color: Theme.of(context).primaryColor,
          ),
          DialogButton(
            child: Text(
              "لا",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            onPressed: () => Navigator.pop(context),
            color: Theme.of(context).primaryColor,
          ),
        ],
      ).show();
    }

    var labelStyle = TextStyle(
      fontSize: 18,
    );
    return LayoutBuilder(
      builder: (context, constraint) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraint.maxHeight),
            child: IntrinsicHeight(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 300,
                    padding:
                        EdgeInsets.only(top: 50.0, right: 35.0, left: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/userprofile");
                          },
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage('assets/images/zian.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Zayn Malik",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                              fontSize: 18.0),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 5.0),
                    child: ListTile(
                      trailing: Icon(
                        Icons.chevron_right,
                        size: 25,
                      ),
                      leading: Image.asset(
                        'assets/images/diamond.png',
                        fit: BoxFit.fill,
                        width: 35,
                        height: 35,
                      ),
                      title: Text("300 ذهب",
                          style: TextStyle(color: Colors.grey, fontSize: 18)),
                      onTap: () {
                        Navigator.pushNamed(context, "/goldpoints");
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: ListTile(
                      trailing: Icon(
                        Icons.chevron_right,
                        size: 25,
                      ),
                      title: Text("الملف الشخصي", style: labelStyle),
                      onTap: () {
                        Navigator.pushNamed(context, "/userprofile");
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: ListTile(
                      trailing: Icon(
                        Icons.chevron_right,
                        size: 25,
                      ),
                      title: Text("بطاقه الدخول", style: labelStyle),
                      onTap: () {
                        Navigator.pushNamed(context, "/eventpass");
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: ListTile(
                      trailing: Icon(
                        Icons.chevron_right,
                        size: 25,
                      ),
                      title: Text("سياسة خاصة", style: labelStyle),
                      onTap: () {
                        Navigator.pushNamed(context, "/privacy");
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: ListTile(
                      trailing: Icon(
                        Icons.chevron_right,
                        size: 25,
                      ),
                      title: Text("معلومات عنا", style: labelStyle),
                      onTap: () {
                        Navigator.pushNamed(context, "/about");
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: ListTile(
                      trailing: Icon(
                        Icons.chevron_right,
                        size: 25,
                      ),
                      title: Text("أتصل بنا", style: labelStyle),
                      onTap: () {
                        Navigator.pushNamed(context, "/contactus");
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/images/fb.png',
                          height: 40,
                          width: 40,
                        ),
                        Image.asset(
                          'assets/images/youtube.png',
                          height: 55,
                          width: 50,
                        ),
                        Image.asset(
                          'assets/images/insta.png',
                          height: 40,
                          width: 40,
                        ),
                      ],
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 130.0, right: 10.0, bottom: 5.0, top: 5.0),
                    child: ListTile(
                      trailing: Icon(
                        Icons.exit_to_app,
                        color: Colors.black,
                      ),
                      title: Text(
                        "تسجيل خروج",
                        style: TextStyle(fontSize: 16),
                      ),
                      onTap: () => _onBasicAlertPressed(context),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
