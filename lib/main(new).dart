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
    description: 'We are looking for dedicated Staff Nurses to provide quality healthcare services. Key responsibilities include patient care, medication administration, and maintaining accurate medical records. This role requires compassion and attention to detail.',
    eligibility: 'B.Sc. Nursing or equivalent from a recognized institution with valid registration from the Nursing Council. Minimum 1 year of experience preferred but freshers with excellent academic record are also encouraged to apply.',
    howToApply: 'Apply online through the official APMSC website (www.apmscl.in) by May 15, 2025. Candidates must upload scanned copies of their educational certificates, registration, and a recent passport-sized photograph. Shortlisted candidates will be called for an interview.',
  ),
  Job(
    id: '2',
    title: 'Junior Assistant',
    department: 'Hyderabad District Administration',
    location: 'Hyderabad',
    lastDate: '2025-05-10',
    description: 'Seeking a Junior Assistant to support administrative tasks in the Hyderabad District Administration. Duties include data entry, file management, responding to public inquiries, and assisting senior staff. This is a crucial role for efficient office operations.',
    eligibility: 'Any Bachelor\'s Degree from a recognized university. Computer proficiency (MS Office, internet Browse) is mandatory. Typing speed of 30 wpm in English is preferred. Age limit: 18-30 years as of Jan 1, 2025.',
    howToApply: 'Submit your application and detailed resume along with attested copies of educational certificates to the Department of Administration, Hyderabad office, Room No. 205, by May 10, 2025 (5:00 PM). Applications received after the deadline will not be considered.',
  ),
  Job(
    id: '3',
    title: 'Police Constable',
    department: 'Telangana State Police Department',
    location: 'Hyderabad',
    lastDate: '2025-04-20',
    description: 'Recruiting Police Constables for law enforcement duties in Hyderabad. The role involves maintaining public order, crime prevention, and assisting citizens. This position requires physical fitness and a strong sense of responsibility.',
    eligibility: '10+2 pass (Intermediate or equivalent). Must be an Indian citizen. Physical fitness test (PFT) and Physical Measurement Test (PMT) are mandatory. Age between 18-25 years. Height and chest requirements as per government norms.',
    howToApply: 'Register and apply on the official Telangana State Police Recruitment Board website (www.tspolice.gov.in). Online application window closes on April 20, 2025. Admit cards for physical tests will be issued thereafter.',
  ),
  Job(
    id: '4',
    title: 'Assistant Engineer',
    department: 'Telangana State Power Generation Corporation Limited',
    location: 'Hyderabad',
    lastDate: '2025-04-24',
    description: 'Opportunity for an Assistant Engineer at TSPGCL. Responsibilities include power generation, transmission, and distribution system maintenance, project execution, and ensuring operational efficiency. This is a challenging role in a dynamic sector.',
    eligibility: 'Bachelor\'s Degree in Electrical/Mechanical Engineering from a recognized university. Final year students appearing for their exams can also apply provisionally. Knowledge of power systems and relevant software is a plus. Candidates must clear a written examination.',
    howToApply: 'Fill out the online application form on TSPGCL career portal (careers.tspgcl.com). The last date for online application submission is April 24, 2025. Please refer to the detailed notification on the website for exam dates and syllabus.',
  ),
  Job(
    id: '5',
    title: 'Junior Assistant',
    department: 'Vijayawada Municipal Corporation',
    location: 'Vijayawada',
    lastDate: '2025-05-30',
    description: 'Administrative support role in Vijayawada Municipal Corporation. Responsibilities include handling civic records, assisting citizens with queries, and clerical duties. A great opportunity to contribute to local governance.',
    eligibility: 'Graduate in any discipline from a recognized university. Basic computer skills (MS Word, Excel) and good communication abilities are essential. Local language proficiency (Telugu) is preferred.',
    howToApply: 'Online application through the Vijayawada Municipal Corporation portal (www.vmc.gov.in/careers). Deadline for application submission is May 30, 2025. Ensure all required documents are uploaded correctly.',
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
    content: 'The government has unveiled a new recruitment policy aimed at streamlining the hiring process for various state government departments. This policy emphasizes transparency and merit-based selection. Further details will be published soon.',
    date: '2025-06-01',
    language: 'English',
  ),
  NewsArticle(
    id: 'n2',
    title: 'తెలంగాణలో కొత్త ఉద్యోగాల భర్తీకి గ్రీన్ సిగ్నల్',
    content: 'తెలంగాణ ప్రభుత్వం పలు శాఖలలో ఖాళీగా ఉన్న ఉద్యోగాలను భర్తీ చేయడానికి ఆమోదం తెలిపింది. త్వరలో నోటిఫికేషన్లు విడుదల కానున్నాయి. అభ్యర్థులు సిద్ధంగా ఉండాలని అధికారులు సూచించారు.',
    date: '2025-05-28',
    language: 'Telugu',
  ),
  NewsArticle(
    id: 'n3',
    title: 'UPSC Civil Services Exam Dates Released',
    content: 'The Union Public Service Commission (UPSC) has released the examination calendar for Civil Services Exam 2025. Aspirants can check the official UPSC website for detailed dates and application procedures.',
    date: '2025-05-25',
    language: 'English',
  ),
  NewsArticle(
    id: 'n4',
    title: 'ఆంధ్రప్రదేశ్‌లో పోలీసు ఉద్యోగాల దరఖాస్తు గడువు పొడిగింపు',
    content: 'ఆంధ్రప్రదేశ్ పోలీస్ శాఖలో కానిస్టేబుల్ మరియు ఎస్ఐ ఉద్యోగాల కోసం దరఖాస్తు గడువును ఈ నెల చివరి వరకు పొడిగించారు. ఆసక్తిగల అభ్యర్థులు ఈ అవకాశాన్ని సద్వినియోగం చేసుకోవచ్చు.',
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
                'Career App',
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

// Card Component for Job Listings
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
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white.withOpacity(0.9),
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: onTap,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.grey[800],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  ),
                  child: const Text(
                    'View Jobs',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
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
                  // Handle read more (e.g., navigate to a full news article view)
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Reading more about: ${article.title}')),
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
  final ValueChanged<String> onLanguageChanged;
  final String selectedLanguage;

  const SettingsScreen({
    super.key,
    required this.onLanguageChanged,
    required this.selectedLanguage,
  });

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late String _language;
  bool _notificationsEnabled = true;
  String _theme = 'Light'; // Placeholder for theme setting

  @override
  void initState() {
    super.initState();
    _language = widget.selectedLanguage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
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
  final VoidCallback onSave;
  final bool isSaved;

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
      onWillPop: () async {
        onBack();
        return false;
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ElevatedButton.icon(
                        onPressed: isSaved ? null : onSave,
                        icon: Icon(isSaved ? Icons.bookmark : Icons.bookmark_border),
                        label: Text(isSaved ? 'Saved' : 'Save'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: isSaved ? Colors.grey : Colors.green,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          textStyle: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ElevatedButton.icon(
                        onPressed: () => _handleShare(context),
                        icon: const Icon(Icons.share),
                        label: const Text('Share'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.cyan,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          textStyle: const TextStyle(fontSize: 16),
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

  const SavedJobsScreen({super.key, required this.savedJobs, required this.onJobTap});

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
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
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

// Admin Login Screen (NEWLY INTEGRATED)
class AdminLoginScreen extends StatefulWidget {
  final VoidCallback onLoginSuccess;

  const AdminLoginScreen({super.key, required this.onLoginSuccess});

  @override
  State<AdminLoginScreen> createState() => _AdminLoginScreenState();
}

class _AdminLoginScreenState extends State<AdminLoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  // Dummy admin credentials (for demonstration purposes only)
  // !!! IMPORTANT: In a real app, DO NOT hardcode credentials.
  // Use a secure authentication service like Firebase Auth or a backend API.
  static const String _adminUsername = 'admin';
  static const String _adminPassword = 'password';

  void _login() {
    setState(() {
      _isLoading = true;
    });

    // Simulate network delay (e.g., fetching from a server)
    Future.delayed(const Duration(seconds: 2), () {
      if (_usernameController.text == _adminUsername &&
          _passwordController.text == _adminPassword) {
        // Login successful
        widget.onLoginSuccess(); // Call the callback to notify the parent App widget
      } else {
        // Login failed
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Invalid username or password')),
        );
      }
      setState(() {
        _isLoading = false; // Reset loading state
      });
    });
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Login'),
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              obscureText: true, // Hide password text
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            _isLoading
                ? const CircularProgressIndicator() // Show loading indicator when logging in
                : ElevatedButton(
              onPressed: _login, // Call the login method on press
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[700], // Button background color
                foregroundColor: Colors.white, // Button text color
                padding:
                const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Admin Panel Screen Component
class AdminPanelScreen extends StatefulWidget {
  // We'll pass callbacks to interact with dummy data in the parent App widget
  final Function(Job) onAddJob;
  final Function(String) onDeleteJob;
  final Function(NewsArticle) onAddNews;
  final Function(String) onDeleteNews;
  final List<Job> currentJobs;
  final List<NewsArticle> currentNews;

  const AdminPanelScreen({
    super.key,
    required this.onAddJob,
    required this.onDeleteJob,
    required this.onAddNews,
    required this.onDeleteNews,
    required this.currentJobs,
    required this.currentNews,
  });

  @override
  State<AdminPanelScreen> createState() => _AdminPanelScreenState();
}

class _AdminPanelScreenState extends State<AdminPanelScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // Controllers for Job form
  final _jobTitleController = TextEditingController();
  final _jobDepartmentController = TextEditingController();
  final _jobLocationController = TextEditingController();
  final _jobLastDateController = TextEditingController();
  final _jobDescriptionController = TextEditingController();
  final _jobEligibilityController = TextEditingController();
  final _jobHowToApplyController = TextEditingController();

  // Controllers for News form
  final _newsTitleController = TextEditingController();
  final _newsContentController = TextEditingController();
  final _newsDateController = TextEditingController();
  String _newsLanguage = 'English'; // Default for news

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: 4, vsync: this); // Jobs, News, Add Job, Add News
  }

  @override
  void dispose() {
    _tabController.dispose();
    _jobTitleController.dispose();
    _jobDepartmentController.dispose();
    _jobLocationController.dispose();
    _jobLastDateController.dispose();
    _jobDescriptionController.dispose();
    _jobEligibilityController.dispose();
    _jobHowToApplyController.dispose();
    _newsTitleController.dispose();
    _newsContentController.dispose();
    _newsDateController.dispose();
    super.dispose();
  }

  void _addJob() {
    if (_jobTitleController.text.isEmpty ||
        _jobDepartmentController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill all required job fields.')),
      );
      return;
    }
    final newJob = Job(
      id: DateTime.now().millisecondsSinceEpoch.toString(), // Simple unique ID
      title: _jobTitleController.text,
      department: _jobDepartmentController.text,
      location:
      _jobLocationController.text.isEmpty ? 'N/A' : _jobLocationController.text,
      lastDate: _jobLastDateController.text.isEmpty
          ? '2099-12-31'
          : _jobLastDateController.text, // Default far future
      description: _jobDescriptionController.text.isEmpty
          ? 'No description provided.'
          : _jobDescriptionController.text,
      eligibility: _jobEligibilityController.text.isEmpty
          ? 'No eligibility criteria provided.'
          : _jobEligibilityController.text,
      howToApply: _jobHowToApplyController.text.isEmpty
          ? 'No application instructions provided.'
          : _jobHowToApplyController.text,
    );
    widget.onAddJob(newJob);
    // Clear fields
    _jobTitleController.clear();
    _jobDepartmentController.clear();
    _jobLocationController.clear();
    _jobLastDateController.clear();
    _jobDescriptionController.clear();
    _jobEligibilityController.clear();
    _jobHowToApplyController.clear();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('${newJob.title} added!')),
    );
    _tabController.animateTo(0); // Go back to Jobs tab
  }

  void _addNews() {
    if (_newsTitleController.text.isEmpty ||
        _newsContentController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill all required news fields.')),
      );
      return;
    }
    final newNews = NewsArticle(
      id: DateTime.now().millisecondsSinceEpoch.toString(), // Simple unique ID
      title: _newsTitleController.text,
      content: _newsContentController.text,
      date: _newsDateController.text.isEmpty
          ? DateTime.now().toIso8601String().split('T')[0]
          : _newsDateController.text,
      language: _newsLanguage,
    );
    widget.onAddNews(newNews);
    // Clear fields
    _newsTitleController.clear();
    _newsContentController.clear();
    _newsDateController.clear();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('${newNews.title} added!')),
    );
    _tabController.animateTo(1); // Go back to News tab
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Panel'),
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white.withOpacity(0.7),
          indicatorColor: Colors.white,
          tabs: const [
            Tab(text: 'Manage Jobs'),
            Tab(text: 'Manage News'),
            Tab(text: 'Add Job'),
            Tab(text: 'Add News'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Manage Jobs Tab
          _buildManageJobsTab(),
          // Manage News Tab
          _buildManageNewsTab(),
          // Add Job Tab
          _buildAddJobTab(),
          // Add News Tab
          _buildAddNewsTab(),
        ],
      ),
    );
  }

  Widget _buildManageJobsTab() {
    return widget.currentJobs.isEmpty
        ? const Center(child: Text('No jobs to manage.'))
        : ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: widget.currentJobs.length,
      itemBuilder: (context, index) {
        final job = widget.currentJobs[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            title: Text(job.title),
            subtitle: Text('${job.department} - ${job.location}'),
            trailing: IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () {
                // Show confirmation dialog before deleting
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Delete Job?'),
                    content:
                    Text('Are you sure you want to delete "${job.title}"?'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Cancel'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          widget.onDeleteJob(job.id);
                          Navigator.pop(context); // Close dialog
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('${job.title} deleted.')),
                          );
                        },
                        style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                        child: const Text('Delete'),
                      ),
                    ],
                  ),
                );
              },
            ),
            onTap: () {
              // In a real app, you might navigate to an edit job screen
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Tapped to edit ${job.title} (Feature not implemented)')),
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildManageNewsTab() {
    return widget.currentNews.isEmpty
        ? const Center(child: Text('No news to manage.'))
        : ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: widget.currentNews.length,
      itemBuilder: (context, index) {
        final news = widget.currentNews[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            title: Text(news.title),
            subtitle: Text('${news.date} - ${news.language}'),
            trailing: IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Delete News?'),
                    content:
                    Text('Are you sure you want to delete "${news.title}"?'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Cancel'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          widget.onDeleteNews(news.id);
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('${news.title} deleted.')),
                          );
                        },
                        style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                        child: const Text('Delete'),
                      ),
                    ],
                  ),
                );
              },
            ),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Tapped to edit ${news.title} (Feature not implemented)')),
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildAddJobTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: _jobTitleController,
            decoration: const InputDecoration(labelText: 'Job Title'),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _jobDepartmentController,
            decoration: const InputDecoration(labelText: 'Department'),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _jobLocationController,
            decoration: const InputDecoration(labelText: 'Location (Optional)'),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _jobLastDateController,
            decoration: const InputDecoration(
                labelText: 'Last Date (YYYY-MM-DD, Optional)',
                hintText: 'e.g., 2025-05-30'),
            keyboardType: TextInputType.datetime,
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _jobDescriptionController,
            decoration: const InputDecoration(labelText: 'Description (Optional)'),
            maxLines: 3,
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _jobEligibilityController,
            decoration: const InputDecoration(labelText: 'Eligibility (Optional)'),
            maxLines: 3,
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _jobHowToApplyController,
            decoration: const InputDecoration(labelText: 'How to Apply (Optional)'),
            maxLines: 3,
          ),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: _addJob,
            icon: const Icon(Icons.add),
            label: const Text('Add New Job'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAddNewsTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: _newsTitleController,
            decoration: const InputDecoration(labelText: 'News Title'),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _newsContentController,
            decoration: const InputDecoration(labelText: 'News Content'),
            maxLines: 5,
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _newsDateController,
            decoration: const InputDecoration(
                labelText: 'News Date (YYYY-MM-DD, Optional)',
                hintText: 'e.g., 2025-06-05'),
            keyboardType: TextInputType.datetime,
          ),
          const SizedBox(height: 12),
          DropdownButtonFormField<String>(
            value: _newsLanguage,
            decoration: const InputDecoration(labelText: 'Language'),
            items: <String>['English', 'Telugu', 'Hindi'] // Added Hindi for demonstration
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                _newsLanguage = newValue!;
              });
            },
          ),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: _addNews,
            icon: const Icon(Icons.add),
            label: const Text('Add New News Article'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
          ),
        ],
      ),
    );
  }
}

// Main App Component (Controls overall navigation and state)
class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool _showSplash = true;
  String? _selectedJobId; // Tracks which job detail to show
  String _activeTopTab = 'jobs'; // 'jobs' or 'news' for the home screen
  String _activeBottomNav = 'home'; // 'home', 'saved', 'admin', 'settings'
  List<Job> _savedJobs = []; // List to store saved jobs
  String _currentLanguage = 'English'; // Default language for news filtering
  bool _isAdminLoggedIn = false; // NEW: State to track admin login status

  // Modifiable lists for admin panel and main display
  List<Job> _currentJobs = List.from(dummyJobs);
  List<NewsArticle> _currentNews = List.from(dummyNews);

  // Search functionality related states
  String _searchQueryJobs = '';
  String _searchQueryNews = '';
  List<Job> _filteredJobs = [];
  List<NewsArticle> _filteredNews = [];

  // Controllers for search bars to clear text easily
  final TextEditingController _jobSearchController = TextEditingController();
  final TextEditingController _newsSearchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Initialize filtered lists on app start
    _filterJobs();
    _filterNews();

    // Timer for splash screen
    Timer(const Duration(seconds: 3), () {
      setState(() {
        _showSplash = false;
      });
    });
  }

  @override
  void dispose() {
    _jobSearchController.dispose();
    _newsSearchController.dispose();
    super.dispose();
  }

  // --- Filtering Methods ---
  void _filterJobs() {
    setState(() {
      _filteredJobs = _currentJobs.where((job) {
        final query = _searchQueryJobs.toLowerCase();
        return job.title.toLowerCase().contains(query) ||
            job.department.toLowerCase().contains(query) ||
            job.location.toLowerCase().contains(query);
      }).toList();
    });
  }

  void _filterNews() {
    setState(() {
      _filteredNews = _currentNews.where((article) {
        final query = _searchQueryNews.toLowerCase();
        // Filter by language first, then by search query
        final matchesLanguage = _currentLanguage == 'English' ||
            article.language == _currentLanguage;
        final matchesQuery = article.title.toLowerCase().contains(query) ||
            article.content.toLowerCase().contains(query);
        return matchesLanguage && matchesQuery;
      }).toList();
    });
  }

  // --- Job and News Management ---
  Job? get _selectedJob {
    return _selectedJobId != null
        ? _currentJobs.firstWhere((job) => job.id == _selectedJobId)
        : null;
  }

  void _saveJob(Job job) {
    setState(() {
      if (!_savedJobs.contains(job)) {
        _savedJobs.add(job);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('${job.title} saved!')),
        );
      }
    });
  }

  void _handleLanguageChange(String newLanguage) {
    setState(() {
      _currentLanguage = newLanguage;
      _filterNews(); // Re-filter news when language changes
    });
  }

  // --- Admin Panel Callbacks (passed to AdminPanelScreen) ---
  void _addJobAdmin(Job job) {
    setState(() {
      _currentJobs.add(job);
      _filterJobs(); // Update filtered list immediately
    });
  }

  void _deleteJobAdmin(String jobId) {
    setState(() {
      _currentJobs.removeWhere((job) => job.id == jobId);
      _savedJobs.removeWhere((job) => job.id == jobId); // Also remove from saved if deleted
      _filterJobs(); // Update filtered list immediately
    });
  }

  void _addNewsAdmin(NewsArticle article) {
    setState(() {
      _currentNews.add(article);
      _filterNews(); // Update filtered list immediately
    });
  }

  void _deleteNewsAdmin(String newsId) {
    setState(() {
      _currentNews.removeWhere((article) => article.id == newsId);
      _filterNews(); // Update filtered list immediately
    });
  }

  // NEW: Callback for successful admin login from AdminLoginScreen
  void _handleAdminLoginSuccess() {
    setState(() {
      _isAdminLoggedIn = false;
      _activeBottomNav = 'admin'; // Automatically navigate to admin panel on success
    });
  }

  // Helper widget to build the content for the 'Home' bottom navigation tab
  Widget _buildHomeTabContent() {
    return Column(
      children: [
        Container(
          color: const Color(0xFFE6F2FF), // Lighter blue for tabs
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _activeTopTab = 'jobs';
                      _searchQueryJobs = ''; // Clear search when switching tabs
                      _jobSearchController.clear(); // Clear text field
                      _filterJobs(); // Ensure jobs are filtered when tab is selected
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: _activeTopTab == 'jobs'
                          ? Colors.white
                          : Colors.transparent,
                      border: _activeTopTab == 'jobs'
                          ? const Border(
                          bottom: BorderSide(color: Colors.blue, width: 3))
                          : null,
                    ),
                    child: Text(
                      'Jobs',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: _activeTopTab == 'jobs'
                            ? Colors.blue
                            : Colors.grey[700],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _activeTopTab = 'news';
                      _searchQueryNews = ''; // Clear search when switching tabs
                      _newsSearchController.clear(); // Clear text field
                      _filterNews(); // Ensure news are filtered when tab is selected
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: _activeTopTab == 'news'
                          ? Colors.white
                          : Colors.transparent,
                      border: _activeTopTab == 'news'
                          ? const Border(
                          bottom: BorderSide(color: Colors.blue, width: 3))
                          : null,
                    ),
                    child: Text(
                      'News',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: _activeTopTab == 'news'
                            ? Colors.blue
                            : Colors.grey[700],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // Search Bar
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _activeTopTab == 'jobs'
                ? _jobSearchController
                : _newsSearchController,
            decoration: InputDecoration(
              hintText: _activeTopTab == 'jobs'
                  ? 'Search jobs by title, department, or location...'
                  : 'Search news by title or content...',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.grey[200],
              contentPadding: const EdgeInsets.symmetric(vertical: 12),
            ),
            onChanged: (value) {
              if (_activeTopTab == 'jobs') {
                _searchQueryJobs = value;
                _filterJobs();
              } else {
                _searchQueryNews = value;
                _filterNews();
              }
            },
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: _activeTopTab == 'jobs'
                ? _filteredJobs.isEmpty
                ? const Center(child: Text('No jobs found matching your criteria.'))
                : GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:
                MediaQuery.of(context).size.width > 600 ? 2 : 1,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1.5,
              ),
              itemCount: _filteredJobs.length,
              itemBuilder: (context, index) {
                final job = _filteredJobs[index];
                Color cardColor;
                switch (index % 4) {
                  case 0:
                    cardColor = Colors.indigo[600]!;
                    break;
                  case 1:
                    cardColor = Colors.green[600]!;
                    break;
                  case 2:
                    cardColor = Colors.orange[600]!;
                    break;
                  case 3:
                  default:
                    cardColor = Colors.red[600]!;
                    break;
                }
                return JobCard(
                  title: job.title,
                  description: job.department,
                  bgColor: cardColor,
                  onTap: () {
                    setState(() {
                      _selectedJobId = job.id;
                    });
                  },
                );
              },
            )
                : _filteredNews.isEmpty
                ? const Center(
                child: Text('No news found matching your criteria.'))
                : ListView.builder(
              itemCount: _filteredNews.length,
              itemBuilder: (context, index) {
                final article = _filteredNews[index];
                return NewsArticleListing(article: article);
              },
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // Show Splash Screen first
    if (_showSplash) {
      return SplashScreen(
        onFinish: () {
          setState(() {
            _showSplash = false;
          });
        },
      );
    }

    // Show Job Detail screen if a job is selected
    if (_selectedJobId != null) {
      return JobDetail(
        job: _selectedJob!,
        onBack: () {
          setState(() {
            _selectedJobId = null; // Go back to the main list
          });
        },
        onSave: () {
          if (_selectedJob != null) {
            _saveJob(_selectedJob!);
          }
        },
        isSaved: _selectedJob != null && _savedJobs.contains(_selectedJob!),
      );
    }

    // Main Scaffold with Bottom Navigation
    return Scaffold(
      appBar: AppBar(
        title: const Text('Career App'),
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: _activeBottomNav == 'home'
          ? _buildHomeTabContent() // Display content for the 'Home' tab
          : _activeBottomNav == 'saved'
          ? SavedJobsScreen(
        savedJobs: _savedJobs,
        onJobTap: (job) {
          setState(() {
            _selectedJobId = job.id;
          });
        },
      )
          : _activeBottomNav == 'admin'
          ? (_isAdminLoggedIn // Check if admin is logged in
          ? AdminPanelScreen(
        onAddJob: _addJobAdmin,
        onDeleteJob: _deleteJobAdmin,
        onAddNews: _addNewsAdmin,
        onDeleteNews: _deleteNewsAdmin,
        currentJobs: _currentJobs,
        currentNews: _currentNews,
      )
          : AdminLoginScreen( // Show login screen if not logged in
        onLoginSuccess: _handleAdminLoginSuccess,
      ))
          : SettingsScreen(
        onLanguageChanged: _handleLanguageChange,
        selectedLanguage: _currentLanguage,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.blue[700],
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, -2),
            ),
          ],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
          child: BottomNavigationBar(
            currentIndex: _activeBottomNav == 'home'
                ? 0
                : (_activeBottomNav == 'saved'
                ? 1
                : (_activeBottomNav == 'admin' ? 2 : 3)),
            onTap: (index) {
              setState(() {
                if (index == 0) {
                  _activeBottomNav = 'home';
                  // Clear search state when navigating away from Home sub-tabs
                  _searchQueryJobs = '';
                  _searchQueryNews = '';
                  _jobSearchController.clear();
                  _newsSearchController.clear();
                  _filterJobs();
                  _filterNews();
                } else if (index == 1) {
                  _activeBottomNav = 'saved';
                } else if (index == 2) {
                  _activeBottomNav = 'admin'; // This will now go to login screen if not logged in
                } else {
                  _activeBottomNav = 'settings';
                }
              });
            },
            backgroundColor: Colors.blue[700],
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white.withOpacity(0.7),
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark),
                label: 'Saved',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.admin_panel_settings),
                label: 'Admin',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
