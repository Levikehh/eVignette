class Vignette {
  String title, deadline;

  Vignette({
    required this.title,
    required this.deadline,
  });
}

List<Vignette> vignettes = [
  Vignette(
    title: "AAA-000",
    deadline: "2022-06-10",
  ),
  Vignette(
    title: "AAA-001",
    deadline: "2021-05-27",
  ),
  Vignette(
    title: "AAA-002",
    deadline: "2021-12-03",
  ),
];
