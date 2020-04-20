class Lesson {
  String title;
  String content;
  bool condition;

  Lesson({this.title, this.content, this.condition});
}

List getLessons() {
  return [
    Lesson(title: "Anorectum", content: "Start", ),
    Lesson(
        title: "Duodenum",
        content:
            "1.Introduction and Etymology \n2.Location, shape and Length \n3.Parts and Names and Development \n4.First part of duodenum \n5.Second part of duodenum \n6.Third part of duodenum \n7.Fourth part of duodenum \n8.Suspensory muscle(ligament) of Treitz and Duodenal Fixation \n9.Peritoneal Relations and Duodenal Bare Area \n10.Blood Supply, Lymphatic Drainage and Innervation \n11.Histology \n12.Functions of duodenum \n13.Applied Aspects"),
    Lesson(
        title: "Esophagus",
        content:
            "1.Introduction \n2.Terminology of Esophagus and Axis \n3.Tissue composition of the esophagus \n4.Sphincters and Constrictions \n5.Blood Supply and  Lymphatic Drainage \n6.Development and Histology \n7.Innervation and clinically relevant relations \n8.Evaluation of esophagus and applied aspects"),
    Lesson(title: "Jejunum and Ileum", content: "Start"),
    Lesson(title: "Large Intestine", content: "Start"),
    Lesson(title: "Liver", content: "Start"),
    Lesson(title: "Oral Cavity", content: "Start"),
    Lesson(title: "Palate", content: "Start"),
    Lesson(title: "Pancreas", content: "Start"),
    Lesson(title: "Peritoneum and Mesentery", content: "Start"),
    Lesson(title: "Pharynx", content: "Start"),
    Lesson(title: "Process of Digestion", content: "Start"),
    Lesson(
        title: "Stomach",
        content:
            "1.Introduction \n2.Location and Curvatures \n3.Curvatures \n4.Orifices and Sphincters \n5.Division, Capacity and Surfaces \n6.Relational and Peritoneal Attachments \n7.Microscopic Structure \n8.Functions of Stomach and Gastric Emptying \n9.Parietal Cells and Interior of Stomach \n10.Blood Supply and Lymphatic Drainage \n11.Nerve Supply \n12.Applied Aspects"),
    Lesson(title: "Tongue", content: "Start"),
    Lesson(title: "Vermiform Appendix", content: "Start"),
  ];
}
