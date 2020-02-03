const kVareities = """
query getAllVarieties{
  allVarieties {
    id
    name
    commodity {
      id
      name
      photo
    }
  }
}

""";
