import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'models.dart';
import 'c_programs.dart';

class TemplatesScreen extends StatelessWidget {
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
                  'C# Program Templates', style: Theme.of(context).textTheme.labelLarge
              ),
            ),
            Divider(
              height: MediaQuery.of(context).size.height * 0.05,
              thickness: 2,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: cSharpTemplates.length,
                itemBuilder: (context, index) {
                  final template = cSharpTemplates[index];
                  return Card(
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              template.title,
                              style: Theme.of(context).textTheme.displayLarge,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.visibility, color: Colors.blue[800]),
                            onPressed: () {
                              _showCodeDialog(context, template.title, template.code);
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.copy, color: Colors.green[800]),
                            onPressed: () {
                              _copyToClipboard(context, template.code);
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showCodeDialog(BuildContext context, String title, String code) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
              title, textAlign: TextAlign.center,
          ),
          content: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8, // Set a reasonable width
            height: MediaQuery.of(context).size.height * 0.4, // Set a reasonable height
            child: Scrollbar(
              thumbVisibility: true, // Make scrollbar always visible
              controller: ScrollController(),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal, // Enable horizontal scrolling
                child: Scrollbar(
                  thumbVisibility: true, // Make vertical scrollbar always visible
                  controller: ScrollController(),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical, // Enable vertical scrolling
                    child: SelectableText(
                        code,
                        style: Theme.of(context).textTheme.bodySmall
                    ),
                  ),
                ),
              ),
            ),
          ),
          actions: [
            Center(
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.close, color: Colors.red,)
              ),
            )
          ],
        );
      },
    );
  }

  void _copyToClipboard(BuildContext context, String code) {
    Clipboard.setData(ClipboardData(text: code));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Code copied to clipboard!')),
    );
  }
}