        import 'package:flutter/material.dart';
        import 'dart:math' as math;import 'dart:math' as math;
        
        class HomescreenWidget extends StatefulWidget {
        @override
        _HomescreenWidgetState createState() => _HomescreenWidgetState();
        }
        
        class _HomescreenWidgetState extends State<HomescreenWidget> {
        @override
        Widget build(BuildContext context) {
        // Figma Flutter Generator HomescreenWidget - FRAME
        
        return Container(
      width: 390,
      height: 844,
      decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
      color : Color.fromRGBO(253, 246, 235, 1),
  ),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 756,
        left: 0,
        child: Text('a')
      ),Positioned(
        top: 134,
        left: 24,
        child: Container(
      decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
      boxShadow : [BoxShadow(
          color: Color.fromRGBO(48, 40, 40, 0.11999999731779099),
          offset: Offset(0,4),
          blurRadius: 24
      )],
      color : Color.fromRGBO(255, 255, 255, 1),
  ),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[Container(
      width: 310,
      height: 310,
      decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(4),
            topRight: Radius.circular(4),
            bottomLeft: Radius.circular(4),
            bottomRight: Radius.circular(4),
          ),
      image : DecorationImage(
          image: AssetImage('assets/images/Avatar.png'),
          fit: BoxFit.fitWidth
      ),
  ),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 294,
        left: 135,
        child: Container(
      decoration: BoxDecoration(
          
  ),
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[
          Container(
        width: 8,
        height: 8,
        decoration: BoxDecoration(
          gradient : LinearGradient(
          begin: Alignment(0.5,0.5),
          end: Alignment(-0.5,0.5),
          colors: [Color.fromRGBO(239, 180, 28, 1),Color.fromRGBO(251, 135, 1, 1)]
        ),
      borderRadius : BorderRadius.all(Radius.elliptical(8, 8)),
  )
      ), SizedBox(width : 8),
Container(
        width: 8,
        height: 8,
        decoration: BoxDecoration(
          color : Color.fromRGBO(242, 241, 241, 1),
      borderRadius : BorderRadius.all(Radius.elliptical(8, 8)),
  )
      ), SizedBox(width : 8),
Container(
        width: 8,
        height: 8,
        decoration: BoxDecoration(
          color : Color.fromRGBO(242, 241, 241, 1),
      borderRadius : BorderRadius.all(Radius.elliptical(8, 8)),
  )
      ),

        ],
      ),
    )
      ),Positioned(
        top: 152,
        left: 293,
        child: Transform.rotate(
        angle: 1.4033419209422001e-14 * (math.pi / 180),
        child: SvgPicture.asset(
        'assets/images/arrow2.svg',
        semanticsLabel: 'arrow2'
      );,
      )
      ),Positioned(
        top: 152,
        left: 17,
        child: Transform.rotate(
        angle: 179.99999499104345 * (math.pi / 180),
        child: SvgPicture.asset(
        'assets/images/arrow3.svg',
        semanticsLabel: 'arrow3'
      );,
      )
      ),
        ]
      )
    ), SizedBox(height : 12),
Container(
      width: 310,
      height: 48,
      decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
  ),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 4,
        left: 0,
        child: Container(
      decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
  ),
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[Text('To Bich Tram, 23', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 20,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),), SizedBox(height : 4),
Text('Ho Chi Minh City, Vietnam', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(150, 139, 139, 1),
        fontFamily: 'Roboto',
        fontSize: 14,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),),
],
      ),
    )
      ),Positioned(
        top: 0,
        left: 262,
        child: null
      ),
        ]
      )
    ), SizedBox(height : 12),
Container(
      width: 310,
      height: 64,
      decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
  ),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
      decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
  ),
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[
          Container(
      decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(4),
            topRight: Radius.circular(4),
            bottomLeft: Radius.circular(4),
            bottomRight: Radius.circular(4),
          ),
      color : Color.fromRGBO(255, 255, 255, 1),
      border : Border.all(
          color: Color.fromRGBO(249, 135, 5, 1),
          width: 1,
        ),
  ),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[
          Text('🍳', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(76, 76, 76, 1),
        fontFamily: 'Roboto',
        fontSize: 14,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),), SizedBox(width : 8),
Text('Cooking', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(249, 135, 5, 1),
        fontFamily: 'Roboto',
        fontSize: 14,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),),

        ],
      ),
    ), SizedBox(width : 8),
Container(
      decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(4),
            topRight: Radius.circular(4),
            bottomLeft: Radius.circular(4),
            bottomRight: Radius.circular(4),
          ),
      color : Color.fromRGBO(255, 255, 255, 1),
      border : Border.all(
          color: Color.fromRGBO(249, 135, 5, 1),
          width: 1,
        ),
  ),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[
          Text('✈', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(76, 76, 76, 1),
        fontFamily: 'Roboto',
        fontSize: 14,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),), SizedBox(width : 8),
Text('Travelling', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(249, 135, 5, 1),
        fontFamily: 'Roboto',
        fontSize: 14,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),),

        ],
      ),
    ),

        ],
      ),
    )
      ),Positioned(
        top: 36,
        left: 0,
        child: Container(
      decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
  ),
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[
          Container(
      decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(4),
            topRight: Radius.circular(4),
            bottomLeft: Radius.circular(4),
            bottomRight: Radius.circular(4),
          ),
      color : Color.fromRGBO(255, 255, 255, 1),
      border : Border.all(
          color: Color.fromRGBO(249, 135, 5, 1),
          width: 1,
        ),
  ),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[
          Text('🎤', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(76, 76, 76, 1),
        fontFamily: 'Roboto',
        fontSize: 14,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),), SizedBox(width : 8),
Text('Singing', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(249, 135, 5, 1),
        fontFamily: 'Roboto',
        fontSize: 14,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),),

        ],
      ),
    ), SizedBox(width : 8),
Container(
      decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(4),
            topRight: Radius.circular(4),
            bottomLeft: Radius.circular(4),
            bottomRight: Radius.circular(4),
          ),
      color : Color.fromRGBO(255, 255, 255, 1),
      border : Border.all(
          color: Color.fromRGBO(249, 135, 5, 1),
          width: 1,
        ),
  ),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[
          Text('🥁', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(76, 76, 76, 1),
        fontFamily: 'Roboto',
        fontSize: 14,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),), SizedBox(width : 8),
Text('Drumming', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(249, 135, 5, 1),
        fontFamily: 'Roboto',
        fontSize: 14,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),),

        ],
      ),
    ),

        ],
      ),
    )
      ),
        ]
      )
    ),
],
      ),
    )
      ),Positioned(
        top: 644,
        left: 27,
        child: Container(
      decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
  ),
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[
          null, SizedBox(width : 16),
null, SizedBox(width : 16),
null, SizedBox(width : 16),
null,

        ],
      ),
    )
      ),Positioned(
        top: 64,
        left: 24,
        child: Text('Swipe', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 32,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 0,
        left: 0,
        child: null
      ),Positioned(
        top: 59,
        left: 318,
        child: null
      ),
        ]
      )
    );
        }
        }
        