import 'package:flutter/material.dart';
import 'dart:async'; // For Timer

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Career App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Inter', // Assuming 'Inter' font is available or similar
      ),
      home: const App(),
    );
  }
}

// Dummy Data (Simulates API response)
class Job {
  final String id;
  final String title;
  final String department;
  final String location;
  final String lastDate;
  final int? posts;
  final String description;
  final String eligibility;
  final String howToApply;

  Job({
    required this.id,
    required this.title,
    required this.department,
    required this.location,
    required this.lastDate,
    this.posts,
    required this.description,
    required this.eligibility,
    required this.howToApply,
  });

  // Override equals and hashCode for List.contains in saved jobs
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Job && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}

final List<Job> dummyJobs = [
  Job(
    id: '1',
    title: 'Staff Nurse',
    department: 'Andhra Pradesh Medical Service Corporation Limited',
    location: 'Hyderabad',
    lastDate: '2025-05-15',
    posts: 348,
    description:
    'We are looking for dedicated Staff Nurses to provide quality healthcare services. Key responsibilities include patient care, medication administration, and maintaining accurate medical records. This role requires compassion and attention to detail.',
    eligibility:
    'B.Sc. Nursing or equivalent from a recognized institution with valid registration from the Nursing Council. Minimum 1 year of experience preferred but freshers with excellent academic record are also encouraged to apply.',
    howToApply:
    'Apply online through the official APMSC website (www.apmscl.in) by May 15, 2025. Candidates must upload scanned copies of their educational certificates, registration, and a recent passport-sized photograph. Shortlisted candidates will be called for an interview.',
  ),
  Job(
    id: '2',
    title: 'Junior Assistant',
    department: 'Hyderabad District Administration',
    location: 'Hyderabad',
    lastDate: '2025-05-10',
    description:
    'Seeking a Junior Assistant to support administrative tasks in the Hyderabad District Administration. Duties include data entry, file management, responding to public inquiries, and assisting senior staff. This is a crucial role for efficient office operations.',
    eligibility:
    'Any Bachelor\'s Degree from a recognized university. Computer proficiency (MS Office, internet Browse) is mandatory. Typing speed of 30 wpm in English is preferred. Age limit: 18-30 years as of Jan 1, 2025.',
    howToApply:
    'Submit your application and detailed resume along with attested copies of educational certificates to the Department of Administration, Hyderabad office, Room No. 205, by May 10, 2025 (5:00 PM). Applications received after the deadline will not be considered.',
  ),
  Job(
    id: '3',
    title: 'Police Constable',
    department: 'Telangana State Police Department',
    location: 'Hyderabad',
    lastDate: '2025-04-20',
    description:
    'Recruiting Police Constables for law enforcement duties in Hyderabad. The role involves maintaining public order, crime prevention, and assisting citizens. This position requires physical fitness and a strong sense of responsibility.',
    eligibility:
    '10+2 pass (Intermediate or equivalent). Must be an Indian citizen. Physical fitness test (PFT) and Physical Measurement Test (PMT) are mandatory. Age between 18-25 years. Height and chest requirements as per government norms.',
    howToApply:
    'Register and apply on the official Telangana State Police Recruitment Board website (www.tspolice.gov.in). Online application window closes on April 20, 2025. Admit cards for physical tests will be issued thereafter.',
  ),
  Job(
    id: '4',
    title: 'Assistant Engineer',
    department: 'Telangana State Power Generation Corporation Limited',
    location: 'Hyderabad',
    lastDate: '2025-04-24',
    description:
    'Opportunity for an Assistant Engineer at TSPGCL. Responsibilities include power generation, transmission, and distribution system maintenance, project execution, and ensuring operational efficiency. This is a challenging role in a dynamic sector.',
    eligibility:
    'Bachelor\'s Degree in Electrical/Mechanical Engineering from a recognized university. Final year students appearing for their exams can also apply provisionally. Knowledge of power systems and relevant software is a plus. Candidates must clear a written examination.',
    howToApply:
    'Fill out the online application form on TSPGCL career portal (careers.tspgcl.com). The last date for online application submission is April 24, 2025. Please refer to the detailed notification on the website for exam dates and syllabus.',
  ),
  Job(
    id: '5',
    title: 'Junior Assistant',
    department: 'Vijayawada Municipal Corporation',
    location: 'Vijayawada',
    lastDate: '2025-05-30',
    description:
    'Administrative support role in Vijayawada Municipal Corporation. Responsibilities include handling civic records, assisting citizens with queries, and clerical duties. A great opportunity to contribute to local governance.',
    eligibility:
    'Graduate in any discipline from a recognized university. Basic computer skills (MS Word, Excel) and good communication abilities are essential. Local language proficiency (Telugu) is preferred.',
    howToApply:
    'Online application through the Vijayawada Municipal Corporation portal (www.vmc.gov.in/careers). Deadline for application submission is May 30, 2025. Ensure all required documents are uploaded correctly.',
  ),
];

// Dummy News Articles
class NewsArticle {
  final String id;
  final String title;
  final String content;
  final String date;
  final String language;

  NewsArticle({
    required this.id,
    required this.title,
    required this.content,
    required this.date,
    required this.language,
  });

  // Override equals and hashCode for List.contains if needed, similar to Job
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is NewsArticle && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}

final List<NewsArticle> dummyNews = [
  NewsArticle(
    id: 'n1',
    title: 'New Recruitment Policy Announced for State Services',
    content:
    'The government has unveiled a new recruitment policy aimed at streamlining the hiring process for various state government departments. This policy emphasizes transparency and merit-based selection. Further details will be published soon.',
    date: '2025-06-01',
    language: 'English',
  ),
  NewsArticle(
    id: 'n2',
    title: 'తెలంగాణలో కొత్త ఉద్యోగాల భర్తీకి గ్రీన్ సిగ్నల్',
    content:
    'తెలంగాణ ప్రభుత్వం పలు శాఖలలో ఖాళీగా ఉన్న ఉద్యోగాలను భర్తీ చేయడానికి ఆమోదం తెలిపింది. త్వరలో నోటిఫికేషన్లు విడుదల కానున్నాయి. అభ్యర్థులు సిద్ధంగా ఉండాలని అధికారులు సూచించారు.',
    date: '2025-05-28',
    language: 'Telugu',
  ),
  NewsArticle(
    id: 'n3',
    title: 'UPSC Civil Services Exam Dates Released',
    content:
    'The Union Public Service Commission (UPSC) has released the examination calendar for Civil Services Exam 2025. Aspirants can check the official UPSC website for detailed dates and application procedures.',
    date: '2025-05-25',
    language: 'English',
  ),
  NewsArticle(
    id: 'n4',
    title: 'ఆంధ్రప్రదేశ్‌లో పోలీసు ఉద్యోగాల దరఖాస్తు గడువు పొడిగింపు',
    content:
    'ఆంధ్రప్రదేశ్ పోలీస్ శాఖలో కానిస్టేబుల్ మరియు ఎస్ఐ ఉద్యోగాల కోసం దరఖాస్తు గడువును ఈ నెల చివరి వరకు పొడిగించారు. ఆసక్తిగల అభ్యర్థులు ఈ అవకాశాన్ని సద్వినియోగం చేసుకోవచ్చు.',
    date: '2025-05-20',
    language: 'Telugu',
  ),
];

// Splash Screen Component
class SplashScreen extends StatefulWidget {
  final VoidCallback onFinish;

  const SplashScreen({super.key, required this.onFinish});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      widget.onFinish();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue, Colors.purple],
          ),
        ),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Career App', // Changed app name
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Your Gateway to Government Jobs',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 30),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Card Component
class JobCard extends StatelessWidget {
  final String title;
  final String description;
  final Color bgColor;
  final VoidCallback onTap;

  const JobCard({
    super.key,
    required this.title,
    required this.description,
    required this.bgColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Reduced padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // Changed to SpaceBetween to push the button to the bottom
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18, // Decreased font size for title
                  fontWeight: FontWeight.w600, // Adjusted weight
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8), // Reduced spacing
              Expanded(
                child: Text(
                  description,
                  style: TextStyle(
                    fontSize: 13, // Decreased font size for description
                    color: Colors.white.withOpacity(0.9),
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 12), // Reduced spacing
              Align(
                alignment: Alignment.bottomRight, // Align button to bottom right
                child: ElevatedButton(
                  onPressed: onTap,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.grey[800],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 7), // Adjusted button padding
                  ),
                  child: const Text(
                    'View Jobs',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400), // Adjusted button font size
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// News Article Listing Component
class NewsArticleListing extends StatelessWidget {
  final NewsArticle article;

  const NewsArticleListing({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 1,
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              article.title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xFF333333),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              '${article.date} | ${article.language}',
              style: const TextStyle(
                fontSize: 13,
                color: Color(0xFF666666),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              article.content,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF444444),
              ),
            ),
            const SizedBox(height: 12),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: () {
                  // Handle read more
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text('Reading more about: ${article.title}')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[500],
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  textStyle: const TextStyle(fontSize: 12),
                ),
                child: const Text('Read More'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Settings Screen Component
class SettingsScreen extends StatefulWidget {
  final String currentTab;
  final ValueChanged<String> onLanguageChanged;
  final String selectedLanguage;

  const SettingsScreen({
    super.key,
    required this.currentTab,
    required this.onLanguageChanged,
    required this.selectedLanguage,
  });

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late String _language;
  bool _notificationsEnabled = true;
  String _theme = 'Light';

  @override
  void initState() {
    super.initState();
    _language = widget.selectedLanguage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Text(widget.currentTab == 'news' ? 'News Preferences' : 'Settings'),
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Card(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: const Text('Language'),
                    trailing: DropdownButton<String>(
                      value: _language,
                      onChanged: (String? newValue) {
                        setState(() {
                          _language = newValue!;
                        });
                        widget.onLanguageChanged(newValue!);
                      },
                      items: <String>['English', 'Hindi', 'Telugu']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text('Notifications'),
                    trailing: Switch(
                      value: _notificationsEnabled,
                      onChanged: (bool value) {
                        setState(() {
                          _notificationsEnabled = value;
                        });
                      },
                      activeColor: Colors.blue,
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text('Theme'),
                    trailing: ToggleButtons(
                      isSelected: [_theme == 'Light', _theme == 'Dark'],
                      onPressed: (int index) {
                        setState(() {
                          _theme = index == 0 ? 'Light' : 'Dark';
                        });
                      },
                      borderRadius: BorderRadius.circular(8),
                      selectedColor: Colors.white,
                      fillColor: Colors.blue,
                      color: Colors.blue,
                      borderColor: Colors.blue,
                      selectedBorderColor: Colors.blue,
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text('Light'),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text('Dark'),
                        ),
                      ],
                    ),
                  ),
                  if (widget.currentTab == 'settings') ...[
                    const Divider(),
                    ListTile(
                      title: const Text('About'),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Career App v1.0')),
                        );
                      },
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Job Detail Component
class JobDetail extends StatelessWidget {
  final Job job;
  final VoidCallback onBack;
  final VoidCallback onSave; // Added onSave callback
  final bool isSaved; // To check if job is already saved

  const JobDetail({
    super.key,
    required this.job,
    required this.onBack,
    required this.onSave,
    this.isSaved = false,
  });

  void _handleShare(BuildContext context) {
    final shareText =
        '${job.title} Job at ${job.department}, ${job.location}. Last Date: ${job.lastDate}. Apply now!';
    // In a real Flutter app, you'd use the 'share' package:
    // Share.share(shareText);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Sharing: $shareText')),
    );
  }

  @override
  Widget build(BuildContext context) {
    final formattedDate =
        '${DateTime.parse(job.lastDate).day} ${[
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec'
    ][DateTime.parse(job.lastDate).month - 1]}, ${DateTime.parse(job.lastDate).year}';

    return WillPopScope(
      // Added WillPopScope for Android back button
      onWillPop: () async {
        onBack(); // Call the onBack callback to return to previous state
        return false; // Prevent default back button behavior (exiting app)
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: onBack,
          ),
          title: const Text('Job Detail'),
          backgroundColor: Colors.blue[700],
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                job.title,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF333333),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '${job.department} | ${job.location}',
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFF666666),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Last Date: $formattedDate',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Description',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF444444),
                ),
              ),
              const Divider(thickness: 2),
              const SizedBox(height: 8),
              Text(
                job.description,
                style: const TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 24),
              const Text(
                'Eligibility',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF444444),
                ),
              ),
              const Divider(thickness: 2),
              const SizedBox(height: 8),
              Text(
                job.eligibility,
                style: const TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 24),
              const Text(
                'How to Apply',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF444444),
                ),
              ),
              const Divider(thickness: 2),
              const SizedBox(height: 8),
              Text(
                job.howToApply,
                style: const TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceEvenly, // Changed to spaceEvenly for better distribution
                children: [
                  Expanded(
                    // Added Expanded to ensure buttons share space evenly
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0), // Add padding between buttons
                      child: ElevatedButton.icon(
                        onPressed: isSaved ? null : onSave, // Disable if already saved
                        icon: Icon(isSaved ? Icons.bookmark : Icons.bookmark_border),
                        label: Text(isSaved ? 'Saved' : 'Save'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: isSaved ? Colors.grey : Colors.green,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12), // Reduced horizontal padding
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          textStyle: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    // Added Expanded
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0), // Add padding between buttons
                      child: ElevatedButton.icon(
                        onPressed: () => _handleShare(context),
                        icon: const Icon(Icons.share),
                        label: const Text('Share'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.cyan,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12), // Reduced horizontal padding
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Saved Jobs Screen Component
class SavedJobsScreen extends StatelessWidget {
  final List<Job> savedJobs;
  final Function(Job) onJobTap;

  const SavedJobsScreen(
      {super.key, required this.savedJobs, required this.onJobTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saved Jobs'),
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: savedJobs.isEmpty
          ? const Center(
        child: Text(
          'No jobs saved yet!',
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      )
          : ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: savedJobs.length,
        itemBuilder: (context, index) {
          final job = savedJobs[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)),
            elevation: 2,
            child: InkWell(
              onTap: () => onJobTap(job),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      job.title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF333333),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${job.department} - ${job.location}',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFF666666),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Last Date: ${DateTime.parse(job.lastDate).day} ${[
                        'Jan',
                        'Feb',
                        'Mar',
                        'Apr',
                        'May',
                        'Jun',
                        'Jul',
                        'Aug',
                        'Sep',
                        'Oct',
                        'Nov',
                        'Dec'
                      ][DateTime.parse(job.lastDate).month - 1]}, ${DateTime.parse(job.lastDate).year}',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.red,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

// Main App Widget (Stateful)
class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool _isLoading = true;
  int _selectedIndex = 0;
  Job? _selectedJob;
  List<Job> _savedJobs =
  []; // This list remains mutable as it represents user-specific saved data
  String _selectedLanguage = 'English';

  // Use the dummy data directly, as there's no admin panel to modify them
  final List<Job> _allJobs = dummyJobs;
  final List<NewsArticle> _allNews = dummyNews;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  void _loadData() async {
    // Simulate data loading
    await Future.delayed(const Duration(seconds: 3));
    setState(() {
      _isLoading = false;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _selectedJob = null; // Reset selected job when changing tabs
    });
  }

  void _viewJobDetail(Job job) {
    setState(() {
      _selectedJob = job;
    });
  }

  void _hideJobDetail() {
    setState(() {
      _selectedJob = null;
    });
  }

  void _toggleSaveJob(Job job) {
    setState(() {
      if (_savedJobs.contains(job)) {
        _savedJobs.remove(job);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('${job.title} removed from saved jobs.')),
        );
      } else {
        _savedJobs.add(job);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('${job.title} saved successfully!')),
        );
      }
    });
  }

  void _updateLanguage(String newLanguage) {
    setState(() {
      _selectedLanguage = newLanguage;
    });
  }

  List<NewsArticle> get _filteredNews {
    if (_selectedLanguage == 'English') {
      return _allNews.where((article) => article.language == 'English').toList();
    } else if (_selectedLanguage == 'Hindi') {
      return _allNews.where((article) => article.language == 'Hindi').toList();
    } else if (_selectedLanguage == 'Telugu') {
      return _allNews.where((article) => article.language == 'Telugu').toList();
    }
    return _allNews; // Should not happen with current setup
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return SplashScreen(onFinish: () {
        // Since _loadData is async, wrap setState in a callback
        // for SplashScreen to ensure it's called after the delay.
        setState(() {
          _isLoading = false;
        });
      });
    }

    final List<Widget> _widgetOptions = <Widget>[
      // Home Screen (Jobs)
      GridView.builder(
        padding: const EdgeInsets.all(16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.8, // Adjust as needed
        ),
        itemCount: _allJobs.length,
        itemBuilder: (context, index) {
          final job = _allJobs[index];
          final Color cardColor =
          Colors.primaries[index % Colors.primaries.length];
          return JobCard(
            title: job.title,
            description: job.description,
            bgColor: cardColor,
            onTap: () => _viewJobDetail(job),
          );
        },
      ),
      // News Screen
      ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: _filteredNews.length,
        itemBuilder: (context, index) {
          return NewsArticleListing(article: _filteredNews[index]);
        },
      ),
      // Saved Jobs Screen
      SavedJobsScreen(savedJobs: _savedJobs, onJobTap: _viewJobDetail),
      // Settings Screen
      SettingsScreen(
        currentTab: _selectedIndex == 1 ? 'news' : 'settings',
        onLanguageChanged: _updateLanguage,
        selectedLanguage: _selectedLanguage,
      ),
    ];

    return _selectedJob != null
        ? JobDetail(
      job: _selectedJob!,
      onBack: _hideJobDetail,
      onSave: () => _toggleSaveJob(_selectedJob!),
      isSaved: _savedJobs.contains(_selectedJob),
    )
        : Scaffold(
      appBar: AppBar(
        title: const Text('Career App'),
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,
        centerTitle: true,
        // No admin panel button here
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Jobs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed, // Ensures all labels are visible
      ),
    );
  }
}