import 'package:bondee/utils/styles/bondee_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

//-------------------------CONSTANT TEXT----------------
class TextOf extends StatelessWidget {
  TextOf(this.text, this.colour, this.large, this.dweight, {Key key})
      : super(key: key);
  double large;
  FontWeight dweight;
  Color colour;
  String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.poppins(
            color: colour, fontWeight: dweight, fontSize: large));
  }
}

//-------------------------CONSTANT ICON----------------
class IconOf extends StatelessWidget {
  IconOf(this.type, this.large, this.colour, {Key key}) : super(key: key);
  IconData type;
  double large;
  Color colour;
  @override
  Widget build(BuildContext context) {
    return Icon(
      type,
      size: large,
      color: colour,
    );
  }
}

//-------------------------CONSTANT RIGHT AND LEFT PADDING----------------
class SideSpace extends StatelessWidget {
  SideSpace(this.rl_space, this.tb_space, this.dcontents, {Key key})
      : super(key: key);
  double rl_space;
  double tb_space;
  Widget dcontents;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(rl_space, tb_space, rl_space, tb_space),
        child: dcontents);
  }
}

//--------------------------VERTICAl SPACING--------------------------------
class YSpace extends StatelessWidget {
  YSpace(this.giga, {Key key}) : super(key: key);
  double giga;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: giga);
  }
}

//--------------------------HoRIZoNTAl SPACING--------------------------------
class XSpace extends StatelessWidget {
  XSpace(this.fife, {Key key}) : super(key: key);
  double fife;
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: fife);
  }
}

//-----------------------EXPANDABE lIST------------------------
class ExpandableLists extends StatelessWidget {
  ExpandableLists(this.dheight, this.dwidth, this.listTitle, this.dlistContents,
      this.leftEnd,
      {Key key})
      : super(key: key);
  double dheight;
  double dwidth;
  String listTitle;
  Widget dlistContents;
  Widget leftEnd;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: colorp4,
      child: Container(
        width: dwidth,
        height: dheight,
        decoration: BoxDecoration(
          border: Border.all(color: colorp4, width: 1),
        ),
        child: ExpansionTile(
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          title: TextOf(listTitle, colorW, 20, FontWeight.w300),
          children: [dlistContents],
          trailing: leftEnd,
        ),
      ),
    );
  }
}

//----------------------FoRWARD NAVIGATIoN
class NavigateTo {
  static next(BuildContext context, dpage) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => dpage));
  }
}

class NRNavigateTo {
  static nr_next(BuildContext context, Widget dpage) {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => dpage), (route) => false);
  }
}
//-----------------------EACH oNE oF PRoFIlE WIDGET

class EACHoNEoFPRoFIlEWIDGET extends StatelessWidget {
  EACHoNEoFPRoFIlEWIDGET(
      this.vectorImage, this.dtite, this.hwfar_progress, this.toeditPage,
      {Key key})
      : super(key: key);
  String vectorImage;
  String dtite;
  double hwfar_progress;
  Function toeditPage;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: colorp4,
      onTap: () {
        toeditPage();
      },
      child: Container(
        //height: double(3),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          border: Border.all(color: colorp4, width: 1),
        ),
        child: Container(
          child: SideSpace(
              5,
              7,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      XSpace(10),
                      Image.asset(vectorImage),
                      XSpace(20),
                      TextOf(dtite, colorW, 13, FontWeight.w400),
                    ],
                  ),
                  LinearPercentIndicator(
                    width: 90,
                    animation: true,
                    lineHeight: 15,
                    animationDuration: 2500,
                    percent: hwfar_progress,
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: colorp4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextOf("Edit", colorp4, 16, FontWeight.w700),
                      IconOf(Icons.arrow_forward_ios_rounded, 15, colorW)
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

//-----------------------REUSABlE CoNTAINER
class ReusableContainer extends StatelessWidget {
  ReusableContainer(this.containerContents, this.dradius, this.dborder,
      this.dwidth, this.innerColor, this.outerColor,
      {Key key})
      : super(key: key);
  Widget containerContents;
  double dradius;
  double dborder;
  Color innerColor;
  Color outerColor;
  dynamic dwidth;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: dwidth,
      decoration: BoxDecoration(
          color: innerColor,
          borderRadius: BorderRadius.circular(dradius),
          border: Border.all(width: dborder, color: outerColor)),
      child: containerContents,
    );
  }
}

//------------------------------SWITCH------------
class CustomizedSwitch extends StatefulWidget {
  CustomizedSwitch(
    this.whenSwitchIsOff,
    this.whenSwitchIsOn, {
    Key key,
  }) : super(key: key);

  void whenSwitchIsOff;
  void whenSwitchIsOn;
  @override
  _CustomizedSwitchState createState() => _CustomizedSwitchState();
}

//------------------------------THE SWITCH STATE------------
class _CustomizedSwitchState extends State<CustomizedSwitch> {
  bool whenStateChangesValue = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: LiteRollingSwitch(
        value: false,
        colorOn: colorp4,
        iconOff: null,
        textOff: '',
        textOn: '',
        iconOn: null,
        onSwipe: (whenStateChangesValue) {
          !whenStateChangesValue;
        },
        colorOff: colorp3,
        animationDuration: Duration(milliseconds: 800),
        onChanged: (whenStateChangesValue) {
          whenStateChangesValue
              ? widget.whenSwitchIsOff
              : widget.whenSwitchIsOn;
        },
      ),
    );
  }
}

class OurSwich extends StatefulWidget {
  OurSwich(this.whenActive, {Key key}) : super(key: key);
  bool whenActive;
  @override
  _OurSwichState createState() => _OurSwichState();
}

// ignore: must_be_immutable
class BondeeButton extends StatelessWidget {
  BondeeButton(this.texts, this.action, {Key key}) : super(key: key);
  String texts;
  Function action;
  @override
  Widget build(BuildContext context) {
    return ReusableContainer(
        InkWell(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextOf(texts, colorp4, 20, FontWeight.w600),
              IconOf(Icons.arrow_forward_ios, 20, colorp4)
            ],
          ),
          onTap: action,
        ),
        0,
        1,
        MediaQuery.of(context).size.width * 0.35,
        colorB,
        colorp4);
  }
}

class _OurSwichState extends State<OurSwich> {
  @override
  Widget build(BuildContext context) {
    return Switch(
        activeColor: colorp1,
        inactiveTrackColor: colorp4,
        value: widget.whenActive,
        onChanged: (bool newVal) {
          setState(() {
            widget.whenActive = newVal;
          });
        });
  }
}

///-------------------------------Slider
class BondeeSlider extends StatefulWidget {
  BondeeSlider(this.distance, {Key key}) : super(key: key);
  double distance;
  @override
  _BondeeSliderState createState() => _BondeeSliderState();
}

class _BondeeSliderState extends State<BondeeSlider> {
  @override
  Widget build(BuildContext context) {
    return Slider(
        value: widget.distance,
        min: 0,
        max: 100,
        onChanged: (ageRange) {
          setState(() {
            widget.distance = ageRange;
          });
        });
  }
}
