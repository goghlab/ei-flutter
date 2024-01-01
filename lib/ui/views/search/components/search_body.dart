import 'package:flutter/material.dart';
import 'package:ei_autoshop/ui/views/cards/cards_screen.dart'; // Import the CardsScreen

class SearchBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
        ),
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return GridItem(menuItem: menuItems[index]);
        },
      ),
    );
  }
}

class GridItem extends StatefulWidget {
  final MenuItem menuItem;

  const GridItem({Key? key, required this.menuItem}) : super(key: key);

  @override
  _GridItemState createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {
  bool isMouseOver = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isMouseOver = true;
        });
      },
      onExit: (_) {
        setState(() {
          isMouseOver = false;
        });
      },
      child: GestureDetector(
        onTap: () {
          // Handle button-like behavior here
          if (widget.menuItem.title == 'My QR Code') {
            // Navigate or perform an action when the 'My QR Code' grid item is tapped
            Navigator.of(context).pop(); // Close the current screen
          } else if (widget.menuItem.title == 'Payment') {
            // Navigate to the CardsScreen when the 'Payment' grid item is tapped
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const CardsScreen(),
            ));
          }
        },
        child: Container(
          decoration: BoxDecoration(
            color: isMouseOver ? const Color(0xFFE5E5E5) : const Color(0xFFF8F8FA),
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(12.0),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                widget.menuItem.icon,
                size: 40.0,
                color: widget.menuItem.iconColor,
              ),
              const SizedBox(height: 8.0),
              Text(
                widget.menuItem.title,
                style: TextStyle(color: widget.menuItem.textColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuItem {
  final IconData icon;
  final String title;
  final Color iconColor;
  final Color textColor;

  MenuItem({
    required this.icon,
    required this.title,
    this.iconColor = const Color(0xFF028DFF),
    this.textColor = const Color(0xFF028DFF),
  });
}

final List<MenuItem> menuItems = [
  MenuItem(icon: Icons.qr_code, title: 'My QR Code'),
  MenuItem(icon: Icons.payment, title: 'Payment'),
  MenuItem(icon: Icons.history, title: 'Transaction History'),
  MenuItem(icon: Icons.person, title: 'Profile'),
];
