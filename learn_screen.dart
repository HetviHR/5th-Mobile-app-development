import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LearnScreen extends StatelessWidget {
  const LearnScreen({super.key});

  void _openUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final resources = [
      {
        'title': 'Python Crash Course - YouTube',
        'url': 'https://www.youtube.com/watch?v=rfscVS0vtbw',
      },
      {
        'title': 'Deep Learning Book - Ian Goodfellow',
        'url': 'https://www.deeplearningbook.org/',
      },
      {
        'title': 'Awesome Machine Learning GitHub Repo',
        'url': 'https://github.com/josephmisiti/awesome-machine-learning',
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: resources.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(resources[index]['title']!),
            trailing: const Icon(Icons.open_in_new),
            onTap: () => _openUrl(resources[index]['url']!),
          ),
        );
      },
    );
  }
}
