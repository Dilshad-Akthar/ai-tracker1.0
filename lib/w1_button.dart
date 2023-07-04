import 'package:flutter/material.dart';
import 'homepage.dart';
//import 'locator.dart';
int buttonval = 0;
/*
class CustomButton extends StatefulWidget {
  const CustomButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton>
    with TickerProviderStateMixin {
    
  bool isOn = false;
  late AnimationController _waveController;
  late Animation<double> _waveAnimation;

  @override
  void initState() {
    super.initState();
    _waveController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _waveAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _waveController, curve: Curves.easeInOut),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isOn = !isOn;
          buttonval = isOn ? 1 : 0;
          if (isOn) {
            _waveController.repeat();
             
          } else {
            _waveController.reset();
           
          }
        });
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedBuilder(
            animation: _waveAnimation,
            builder: (context, child) {
              return Container(
                width: 100 + (50 * _waveAnimation.value),
                height: 100 + (50 * _waveAnimation.value),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue.withOpacity(
                      0.5 - (0.5 * _waveAnimation.value)),
                ),
              );
            },
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isOn ? Colors.blue : Colors.red,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    isOn ? 'Stop' : 'Start',
                    style: const TextStyle(color: Colors.white),
                  ),
                  /*Text(
                    'Button Value: $buttonval',
                    style: TextStyle(color: Colors.white),
                  ),*/
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}*/

class CustomButton extends StatefulWidget {
  final VoidCallback onPressed;

  const CustomButton({required Key key, required this.onPressed}) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> with TickerProviderStateMixin {
  bool isOn = false;
  late AnimationController _waveController;
  late Animation<double> _waveAnimation;

  @override
  void initState() {
    super.initState();
    _waveController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _waveAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _waveController, curve: Curves.easeInOut),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isOn = !isOn;
          buttonval = isOn ? 1 : 0;
          if (isOn) {
            _waveController.repeat();
          } else {
            _waveController.reset();
          }
        });
        if (widget.onPressed != null) {
          widget.onPressed();
        }
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedBuilder(
            animation: _waveAnimation,
            builder: (context, child) {
              return Container(
                width: 100 + (50 * _waveAnimation.value),
                height: 100 + (50 * _waveAnimation.value),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue.withOpacity(
                      0.5 - (0.5 * _waveAnimation.value)),
                ),
              );
            },
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isOn ? Colors.blue : Colors.red,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    isOn ? 'Stop' : 'Start',
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}