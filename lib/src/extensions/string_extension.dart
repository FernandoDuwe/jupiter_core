extension StringUtils on String {
  bool isValidCPF() {
    // Remove caracteres não numéricos
    String vrCPF = this.replaceAll(RegExp(r'\D'), '');

    // Verifica se o CPF tem 11 dígitos ou se todos os dígitos são iguais
    if (vrCPF.length != 11 || RegExp(r'^(\d)\1*$').hasMatch(vrCPF))
      return false;

    // Validação do primeiro dígito verificador
    int soma = 0;

    for (int i = 0; i < 9; i++) soma += int.parse(vrCPF[i]) * (10 - i);

    int primeiroDigitoVerificador = (soma * 10) % 11;

    if (primeiroDigitoVerificador >= 10) primeiroDigitoVerificador = 0;

    if (primeiroDigitoVerificador != int.parse(vrCPF[9])) return false;

    // Validação do segundo dígito verificador
    soma = 0;

    for (int i = 0; i < 10; i++) soma += int.parse(vrCPF[i]) * (11 - i);

    int segundoDigitoVerificador = (soma * 10) % 11;

    if (segundoDigitoVerificador >= 10) segundoDigitoVerificador = 0;

    if (segundoDigitoVerificador != int.parse(vrCPF[10])) return false;

    return true;
  }

  bool isValidCNPJ() {
    // Step 1: Remove non-numeric characters
    String vrCNPJ = this.replaceAll(RegExp(r'\D'), '');

    // Step 2: Check the length
    if (vrCNPJ.length != 14) return false;

    // Step 3: Calculate the checksum
    int sum = 0;
    for (int i = 0; i < 12; i++) {
      int digit = int.parse(vrCNPJ[i]);
      int weight = (i < 4) ? 5 - i : 13 - i;
      sum += digit * weight;
    }

    int remainder = sum % 11;
    int checksumDigit = (remainder < 2) ? 0 : 11 - remainder;

    // Step 4: Verify the checksum
    return int.parse(vrCNPJ[12]) == checksumDigit;
  }

  bool isValidCEP() {
    String vrCEP = this.replaceAll(RegExp(r'\D'), '');

    return vrCEP.length == 8;
  }

  bool isValidEmail() {
    RegExp vrRegex = RegExp(
        r'^[a-zA-Z0-9.a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+');

    return vrRegex.hasMatch(this);
  }
}
