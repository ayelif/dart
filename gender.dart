enum Gender { male, female, others }

void main() {
  print('Genders:');
  for (var gender in Gender.values) {
    print(gender.toString());
  }
}
