import 'package:flutter/material.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:flutter_highlight/themes/monokai-sublime.dart';
import 'package:highlight/languages/cs.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CSharpEditorScreen extends StatefulWidget {
  @override
  _CSharpEditorScreenState createState() => _CSharpEditorScreenState();
}

class _CSharpEditorScreenState extends State<CSharpEditorScreen> {
  final controller = CodeController(
    language: cs,
    text: 'using System;\n\nclass Program {\n\tstatic void Main() {\n\t\tConsole.WriteLine("Hello, World!");\n\t}\n}\n',
  );

  String _output = '';
  bool _isRunning = false;
  final String _glotToken = '6a6d2090-d5e1-45ee-9267-11b7d2adbc1a';
  Future<void> _executeWithGlot() async {
    setState(() {
      _isRunning = true;
      _output = 'Executing...';
    });

    try {
      final response = await http.post(
        Uri.parse('https://glot.io/api/run/csharp/latest'),
        headers: {
          'Authorization': 'Token $_glotToken',
          'Content-Type': 'application/json',
        },
        body: json.encode({
          'files': [
            {
              'name': 'main.cs',
              'content': controller.text,
            }
          ],
          'stdin': '',
          'command': '',
        }),
      ).timeout(Duration(seconds: 10));

      final result = json.decode(response.body);
      setState(() {
        _output = result['stdout']?.toString() ?? 'No output';
        if (result['error'] != null && result['error'].toString().isNotEmpty) {
          _output += '\nError: ${result['error']}';
        }
        if (result['stderr'] != null && result['stderr'].toString().isNotEmpty) {
          _output += '\nStderr: ${result['stderr']}';
        }
      });
    } catch (e) {
      setState(() {
        _output = 'Error: ${e.toString()}';
      });
    } finally {
      setState(() {
        _isRunning = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.075),
          Expanded(
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      child: CodeTheme(
                        data: CodeThemeData(styles: monokaiSublimeTheme),
                        child: SingleChildScrollView(
                          child: CodeField(
                            background: Colors.grey[900],
                            controller: controller,
                            minLines: null,
                            maxLines: 20,
                            gutterStyle: GutterStyle(
                              showErrors: true,
                              showFoldingHandles: false,
                              showLineNumbers: false,
                            ),
                            textStyle: GoogleFonts.jetBrainsMono(height: 0),
                          ),
                        ),
                      ),
                      height: MediaQuery.of(context).size.height * 0.6,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Container(
                      padding: EdgeInsets.all(12),
                      color: Colors.grey[900],
                      width: double.infinity,
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height * 0.2,
                      ),
                      child: SingleChildScrollView(
                        child: Text(
                          _output,
                          style: GoogleFonts.jetBrainsMono(
                            color: _output.contains('Error:') || _output.contains('Stderr:')
                                ? Colors.red[300]
                                : Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  right: 10,
                  top: 10,
                  child: FloatingActionButton(
                    onPressed: _isRunning ? null : _executeWithGlot,
                    backgroundColor: _isRunning ? Colors.grey : Colors.green,
                    child: Icon(
                      _isRunning ? Icons.hourglass_top : Icons.play_arrow,
                      color: Colors.white,
                    ),
                    elevation: 8,
                    tooltip: "Run C# code via Glot.io",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        ],
      ),
    );
  }
}