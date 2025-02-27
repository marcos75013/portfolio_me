import 'package:flutter/material.dart';

class AnimatedAvatar extends StatefulWidget {
  final String imagePath;
  final double radius;

  const AnimatedAvatar({Key? key, required this.imagePath, required this.radius}) : super(key: key);

  @override
  _AnimatedAvatarState createState() => _AnimatedAvatarState();
}

class _AnimatedAvatarState extends State<AnimatedAvatar> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _animation = Tween<double>(begin: 0.0, end: 10.0).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Container(
          padding: EdgeInsets.all(_animation.value),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 4.0),
          ),
          child: CircleAvatar(
            radius: widget.radius,
            backgroundImage: AssetImage(widget.imagePath),
          ),
        );
      },
    );
  }
}
