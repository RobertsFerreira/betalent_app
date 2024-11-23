enum EnumEmployeeFilter {
  nome(slug: 'name'),
  telefone(slug: 'phone'),
  cargo(slug: 'job'),
  nenhum(slug: '');

  final String slug;

  const EnumEmployeeFilter({required this.slug});
}
