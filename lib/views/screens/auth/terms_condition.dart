import 'package:flutter/material.dart';
import 'package:waafii/utils/app_colors.dart';

const String termsAndConditions = '''
Last updated: 12/04/2025

By registering and using the CarerFinder AU platform, you agree to the following terms. This 
is a legally binding agreement between you (the “Worker”, including 
Carers/Nurses/Cleaners) and CarerFinder AU (“we”, “our”, or “us”).

1. Who We Are
CarerFinder AU connects support workers with shift opportunities from NDIS providers. 
Admins at CarerFinder AU post these shifts. Workers can accept them via the app. All 
communication must go through CarerFinder AU – not directly with the NDIS providers.

2. Independent Contractor Agreement
• You are not an employee of CarerFinder AU.
• You are responsible for your own:
  o Superannuation
  o Insurance (Public Liability and Professional Indemnity)
  o Taxation and ABN
  o Tools (e.g., phone, car, petrol, internet)

3. Use of the App
• Submit timesheets and shift notes accurately and on time.
• Use the app or designated method to record hours and documentation.
• All documents submitted (e.g. shift notes, case notes) are owned by CarerFinder AU.
• You must not share your login details or allow others to access your account.

4. Payments
• You will be paid based on confirmed hours worked.
• Travel is reimbursed only when it directly benefits the participant (not commuting).
• Payment is processed every fortnight, based on confirmed hours worked and once 
  funds are received from the NDIS provider.

5. Service Expectations
You must:
• Follow NDIS practice standards.
• Report immediately any:
  o Client complaints
  o Hazards, injuries, or incidents
  o Missed shifts or service changes
• Submit up-to-date and accurate notes and documentation.
• Comply with all relevant laws and maintain your qualifications, screenings, and 
  licenses.

6. No Direct Contact or Agreements
You must not:
• Contact or communicate with NDIS participants or their families directly.
• Offer services privately outside the CarerFinder AU platform.
Even after your contract ends, you agree:
• Not to approach or solicit participants for 12 months.
• Not to recruit CarerFinder AU workers or contractors for 18 months.
Breach may result in immediate removal and legal action.

7. Insurance Requirements
You must hold and maintain:
• Public Liability Insurance (recommended minimum \$8 million)
• Professional Indemnity Insurance (minimum \$1 million)
• Work cover if you employ others
Failure to maintain valid insurance may result in removal from the platform and/or legal 
responsibility for any claims or damages.

8. Platform Limitations
CarerFinder AU is a shift-matching platform only. It does not act as an employer, agent, or 
referrer and is not responsible for the performance of any services by workers.

9. Intellectual Property
All app content, documents, procedures, and materials belong to CarerFinder AU and may 
not be copied, shared, or reused without written permission.

10. Termination
• We may suspend or terminate your account at any time for breach.
• You may deactivate your account if no shifts or payments are pending.

11. Confidentiality
All client, shift, and internal CarerFinder AU information is confidential. You must not share 
or misuse any participant or business information.
''';

class TermsAndConditionScreen extends StatelessWidget {
  const TermsAndConditionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: Text('Terms & Conditions'),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.primaryColor, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: SelectableText(

                termsAndConditions,
            ),
          ),
        ),
      ),
    );
  }
}
