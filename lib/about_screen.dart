import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AboutScreen extends StatelessWidget {
  final String githubUrl = "https://github.com/JiBernales/CODEC_CLRANHS";
  final String resUrl = "https://github.com/JiBernales/CODEC_CLRANHS";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Center(
              child: Text(
                'About CODEC',
                  style: Theme.of(context).textTheme.labelLarge
              ),
            ),
            Divider(
              height: MediaQuery.of(context).size.height * 0.05,
              thickness: 2,
            ),
            Text(
              "C.O.D.E.C. or C# On-the-Go Digital Education Companion is designed to help Commissioner Luis R. Asis National High School ICT students learn programming offline.",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text("GitHub Link", style: Theme.of(context).textTheme.labelMedium),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.005,
            ),
            Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(githubUrl, style: Theme.of(context).textTheme.displayLarge, overflow: TextOverflow.ellipsis),
                    ),
                    IconButton(
                      icon: Icon(Icons.copy, color: Colors.blue[800]),
                      onPressed: () {
                        Clipboard.setData(ClipboardData(text: githubUrl));
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("GitHub link copied!"))
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text("Resource Attributions", style: Theme.of(context).textTheme.labelMedium),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.005,
            ),
            Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(githubUrl, style: Theme.of(context).textTheme.displayLarge, overflow: TextOverflow.ellipsis),
                    ),
                    IconButton(
                      icon: Icon(Icons.copy, color: Colors.blue[800]),
                      onPressed: () {
                        Clipboard.setData(ClipboardData(text: githubUrl));
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("GitHub link copied!"))
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
