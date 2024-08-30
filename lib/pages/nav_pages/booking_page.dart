import 'package:flutter/material.dart';
import 'package:havenhub/misc/colors.dart';
import 'package:havenhub/widgets/app_largetext.dart';
import 'package:havenhub/widgets/app_text.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingsPageState();
}

class _BookingsPageState extends State<BookingPage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppLargeText(text: "My Bookings",color:Colors.white.withOpacity(0.7)),
        backgroundColor: AppColors.mainColor,
        elevation: 0,
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey[300],
          indicatorColor: Colors.white,
          tabs: [
            Tab(text: "Upcoming"),
            Tab(text: "Past"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Upcoming Bookings
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: 5, // Replace with your bookings count
                    itemBuilder: (context, index) {
                      return Card(
                        margin: const EdgeInsets.only(bottom: 16.0),
                        elevation: 5,
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(16.0),
                          title: Text("Booking ${index + 1}"),
                          subtitle: Text("Details for booking ${index + 1}"),
                          trailing: Icon(Icons.arrow_forward_ios),
                          onTap: () {
                            // Navigate to booking details
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          // Past Bookings
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: 3, // Replace with your past bookings count
                    itemBuilder: (context, index) {
                      return Card(
                        margin: const EdgeInsets.only(bottom: 16.0),
                        elevation: 5,
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(16.0),
                          title: Text("Past Booking ${index + 1}"),
                          subtitle: Text("Details for past booking ${index + 1}"),
                          trailing: Icon(Icons.arrow_forward_ios),
                          onTap: () {
                            // Navigate to booking details
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
