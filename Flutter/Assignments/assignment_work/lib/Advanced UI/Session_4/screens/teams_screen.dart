import 'package:flutter/material.dart';
import '../models/team_model.dart';
import 'team_details_screen.dart';

class TeamsScreen extends StatelessWidget {
  TeamsScreen({super.key});

  final List<TeamModel> teams = [
    TeamModel(
      name: 'Chennai Super Kings',
      logo:
          'https://documents.iplt20.com/ipl/CSK/Logos/Logooutline/CSKoutline.png',
    ),
    TeamModel(
      name: 'Mumbai Indians',
      logo:
          'https://documents.iplt20.com/ipl/MI/Logos/Logooutline/MIoutline.png',
    ),
    TeamModel(
      name: 'Royal Challengers Bengaluru',
      logo:
          'https://documents.iplt20.com/ipl/RCB/Logos/Logooutline/RCBoutline.png',
    ),
    TeamModel(
      name: 'Kolkata Knight Riders',
      logo:
          'https://documents.iplt20.com/ipl/KKR/Logos/Logooutline/KKRoutline.png',
    ),
    TeamModel(
      name: 'Rajasthan Royals',
      logo:
          'https://documents.iplt20.com/ipl/RR/Logos/Logooutline/RRoutline.png',
    ),
    TeamModel(
      name: 'Sunrisers Hyderabad',
      logo:
          'https://documents.iplt20.com/ipl/SRH/Logos/Logooutline/SRHoutline.png',
    ),
    TeamModel(
      name: 'Delhi Capitals',
      logo:
          'https://static.vecteezy.com/system/resources/previews/075/252/975/non_2x/delhi-capitals-logo-dc-logo-icon-on-transparent-background-free-png.png',
    ),
    TeamModel(
      name: 'Punjab Kings',
      logo:
          'https://documents.iplt20.com/ipl/PBKS/Logos/Logooutline/PBKSoutline.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IPL Teams'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: teams.length,

        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.9,
        ),

        itemBuilder: (context, index) {
          final team = teams[index];

          return Dismissible(
            key: ValueKey(team.name),

            // Allow only right swipe
            direction: DismissDirection.startToEnd,

            // Show background during swipe
            background: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Icon(
                Icons.bookmark_add,
                color: Colors.white,
                size: 30,
              ),
            ),

            // Prevent card removal
            confirmDismiss: (direction) async {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Added to Watchlist'),
                  backgroundColor: Colors.green,
                  duration: Duration(seconds: 2),
                ),
              );

              return false;
            },

            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),

              child: InkWell(
                borderRadius: BorderRadius.circular(15),

                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TeamDetailsScreen(team: team),
                    ),
                  );
                },

                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Image.network(
                          team.logo,
                          fit: BoxFit.contain,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(
                              Icons.sports_cricket,
                              size: 70,
                              color: Colors.blue,
                            );
                          },
                        ),
                      ),

                      const SizedBox(height: 10),

                      Text(
                        team.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
