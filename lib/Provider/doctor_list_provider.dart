import 'package:care_and_cure/models/doctor_models.dart';
import 'package:flutter/material.dart';

class DoctorListProvider with ChangeNotifier {
// setter
  List<Doctor> _doctors = [];

// getter
  List<Doctor> get doctorList {
    return [..._doctors];
  }

  final List demodata = [
    {
      "name": "Dr. Rahul Kumar",
      "image": "assets/images/profile.png",
      "subject": "General Medicine & Cardiology",
      "qualification": "MD, DNB, MBBS",
      "description":
          "Hi i am Dr Rahul Kumar a former student of SCB medical college cuttack ,Odisha of 1969 batch.I am presently practising at my own clinic at Bhubaneswar of Odisha as a General practitioner.I have experience and research in clinical bio-chemistry and lab- medicines and written 12 books on pathology and lab medicines.",
      "isAttachmentAvailable": false,
      "isChecked": false,
      "tagColor": null,
      "time": "Now"
    },
    {
      "name": "DR. Subramanian Swaminathan ",
      "image": "assets/images/Drsubramanians.jpg",
      "subject": "Infectious Diseases & HIV Physician",
      "qualification": "MD, DNB, ABIM, AB Infectious Diseases",
      "description":
          "Director Infectious Diseases and Infection control. Gleneagles Global Hospitals, Chennai. American Board Infectious Diseases. American Board Infectious Diseases Director- Infectious Diseases and Infection Control, GGHC, Chennai Chairman- HIC, BGS GGH, Bengaluru Chair, Infection Control Advisory Group, GGH (Chennai, Bangalore, Hyderabad) Program Director, Microbial Medicine and Infections Control, GGHC, Chennai Chair, Transplant ID subcommittee, CIDS",
      "isAttachmentAvailable": false,
      "isChecked": false,
      "tagColor": null,
      "time": "Now"
    },
    {
      "name": "DR. Sunil Shroff",
      "image": "assets/images/Drsunil.jpg",
      "subject": "Urology & Transplantation - Kidneys",
      "qualification": "MBBS, FRCS, Dip. Urology, MS",
      "description":
          "Dr. Sunil Shroff is a Senior Consultant Urologist & Kidney Transplant Surgeon and Social Entrepreneur who has been instrumental in establishing the deceased donation and transplantation programme in India.",
      "isAttachmentAvailable": false,
      "isChecked": false,
      "tagColor": null,
      "time": "Now"
    },
    {
      "name": "DR. Vishnu Vandana Gowthamnath",
      "image": "assets/images/DrVishnu.jpeg",
      "subject": "Obstetrics & Gynecology",
      "qualification": "MD, DNB, ABIM",
      "description":
          "Gleneagles Global Hospitals, Chennai. American Board Infectious Diseases. American Board Infectious Diseases Director- Infectious Diseases and Infection Control, GGHC, Chennai Chairman- HIC, BGS GGH, Bengaluru Chair, Infection Control Advisory Group, GGH (Chennai, Bangalore, Hyderabad) Program Director, Microbial Medicine and Infections Control, GGHC, Chennai Chair, Transplant ID subcommittee, CIDS",
      "isAttachmentAvailable": false,
      "isChecked": false,
      "tagColor": null,
      "time": "Now"
    },
    {
      "name": "DR. Madhavan Seshadri",
      "image": "assets/images/user_4.png",
      "subject": "Psychiatry & Neuropsychiatrist",
      "qualification": "MBBS, MRCPsych",
      "description":
          "I am a Consultant Psychiatrist trained in India as well as UK. I have 25 years of experience in treating patients with mental disorders and cognitive disorders including neurodevelopmental disorders. I use pharmacological and psychosocial approaches in assessment and management of mental disorders. CCST In General Adult Psychiatry 2014 - East Of England Deanery, Cambridge, England DPM - 1997 Madras Medical College, Chennai. PG Cert ME -2013 University Of Bedfordshire, UK",
      "isAttachmentAvailable": false,
      "isChecked": false,
      "tagColor": null,
      "time": "Now"
    },
    {
      "name": "Dr. Elenor Bauch",
      "image": "assets/images/user_5.png",
      "subject":
          "Orthopedist, Joint Replacement Surgeon, Spine And Pain Specialist",
      "qualification": "MBBS, MS - Orthopaedics",
      "description":
          "Director Infectious Diseases and Infection control. Gleneagles Global Hospitals, Chennai. American Board Infectious Diseases. American Board Infectious Diseases Director- Infectious Diseases and Infection Control, GGHC, Chennai Chairman- HIC, BGS GGH, Bengaluru Chair, Infection Control Advisory Group, GGH (Chennai, Bangalore, Hyderabad) Program Director, Microbial Medicine and Infections Control, GGHC, Chennai Chair, Transplant ID subcommittee, CIDS",
      "isAttachmentAvailable": false,
      "isChecked": false,
      "tagColor": null,
      "time": "Now"
    },
    {
      "name": "Dr. Vijay Anand",
      "image": "assets/images/dr.vjy.jpg",
      "subject": "Complementary & Alternative Medicine",
      "qualification": "MD (HOM)",
      "description":
          "vijay homoeo clinic dharma tower 88, nelson manickam road choolaimedu chennai-94Chennai",
      "isAttachmentAvailable": false,
      "isChecked": false,
      "tagColor": null,
      "time": "Now"
    },
    {
      "name": "DR. Samart Jankar",
      "image": "assets/images/dr.samratjankar.jpg",
      "subject": "Gastrointestinal Surgery & Laparoscopic Surgery, Proctology",
      "qualification": "MBBS, MS, DNB",
      "description":
          "Dr. Samrat Jankar (MBBS, MS, FMAS, and DNB surgical gastroenterology) is one of the most qualified gastroenterologist in Pune and efficient gastrointestinal Surgeon. Dr. Samrat Jankar has gained massive knowledge and experience in many aspects of gastrointestinal Surgeries from renowned GEM hospital and research center (Coimbatore, Tamilnadu). His main services are in the fields of a surgical gastroenterologist, advanced laparoscopic surgery, GI cancer surgery, colorectal surgery, and abdominal wall reconstruction (complex hernia) surgery",
      "isAttachmentAvailable": false,
      "isChecked": false,
      "tagColor": null,
      "time": "Now"
    },
    {
      "name": "DR. Neelam",
      "image": "assets/images/DrNeelam31jan.jpg",
      "subject": "Obstetrics & Gynecology",
      "qualification": "MBBS, DGO, MD",
      "description":
          "Passed MBBS from PATNA Medical College in 1977, did my DGO in 1981 and MD (Ob & Gy) in 1984 .",
      "isAttachmentAvailable": false,
      "isChecked": false,
      "tagColor": null,
      "time": "Now"
    },
    {
      "name": "DR. Tamilselvi Arajunam",
      "image": "assets/images/Drmmmgynec.jpg",
      "subject": "Obstetrics & Gynecology",
      "qualification": "MBBS, DGO, MRCOG, FRCOG",
      "description":
          "Dr Tamilselvi is a senior consultant Urogynaecologist and Obstetrician practicing in Chennai. She completed her under-graduation and post-graduation from Madras Medical College and went over to UK for further training. She completed her MRCOG from Royal College of Obstetricians and Gynaecologists, London during her 10 year stay in UK and Clinical Fellow-ship In Urogynaecology .",
      "isAttachmentAvailable": false,
      "isChecked": false,
      "tagColor": null,
      "time": "Now"
    }
  ];

  Future<void> fetchDoctor() async {
    List<Doctor> _doctorsList = List.generate(
      demodata.length,
      (index) => Doctor(
        name: demodata[index]['name'],
        image: demodata[index]['image'],
        subject: demodata[index]['subject'],
        description: demodata[index]['description'],
        qualification: demodata[index]['qualification'],
        isAttachmentAvailable: demodata[index]['isAttachmentAvailable'],
        isChecked: demodata[index]['isChecked'],
        tagColor: demodata[index]['tagColor'],
        time: demodata[index]['time'],
        body: emailDemoText,
      ),
    );
    _doctors = _doctorsList;
    notifyListeners();
  }
}
