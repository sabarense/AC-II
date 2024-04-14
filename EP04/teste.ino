String entrada;
int vermelho = 13;
int amarelo = 12;
int verde = 11;
int azul = 10;
int bit_0;
int bit_1;
int bit_2;
int bit_3;
int contagemInstrucoes = 4;
int x = 0;
int y = 0;
int w = 0;
String output;
String memoria[100];

void setup() {
  Serial.begin(9600);
  pinMode(vermelho, OUTPUT);
  pinMode(amarelo, OUTPUT);
  pinMode(verde, OUTPUT);
  pinMode(azul, OUTPUT);
}

void loop() {
  memoria[0] = "0";
  memoria[1] = "0";
  memoria[2] = "0";
  memoria[3] = "0";
  if (Serial.available() > 0) {
    entrada = Serial.readStringUntil('\n');
    carregarProgramaNaMemoria(entrada);
    executarProgramaNaMemoria();
  }
}

String portanot(String bits) {
  String saida = "";
  for (int i = 0; i < 4; i++) {
    saida += String(1 - (bits.charAt(i) - '0'));
  }
  return saida;
}

String portaand(String bits_a, String bits_b) {
  String saida = "";
  for (int i = 0; i < 4; i++) {
    int bitA = bits_a.charAt(i) - '0';
    int bitB = bits_b.charAt(i) - '0';
    saida += String(bitA & bitB);
  }
  return saida;
}

String portaor(String bits_a, String bits_b) {
  String saida = "";
  for (int i = 0; i < 4; i++) {
    int bitA = bits_a.charAt(i) - '0';
    int bitB = bits_b.charAt(i) - '0';
    saida += String(bitA | bitB);
  }
  return saida;
}

String portaxor(String bits_a, String bits_b) {
  String saida = "";
  for (int i = 0; i < 4; i++) {
    int bitA = bits_a.charAt(i) - '0';
    int bitB = bits_b.charAt(i) - '0';
    saida += String(bitA ^ bitB);
  }
  return saida;
}

void atualizarBits() {
  bit_0 = memoria[1].charAt(0) - '0';
  bit_1 = memoria[1].charAt(1) - '0';
  bit_2 = memoria[1].charAt(2) - '0';
  bit_3 = memoria[1].charAt(3) - '0';

  memoria[1] = binaryToHex();
}

String hexToBinary(int hexValue) {
  String binaryString = "";
  for (int i = 3; i >= 0; i--) {
    int bit = (hexValue >> i) & 1;
    binaryString += String(bit);
  }
  return binaryString;
}

String binaryToHex() {
    long decimal = strtol(memoria[1].c_str(), NULL, 2);
    char hexString[3]; 
    sprintf(hexString, "%01X", decimal); 
    return String(hexString); 
}

int hexCharToInt(char hexChar) {
  if (hexChar >= '0' && hexChar <= '9') {
    return hexChar - '0';
  }
  else if (hexChar >= 'A' && hexChar <= 'F') {
    return 10 + (hexChar - 'A');
  }
  else if (hexChar >= 'a' && hexChar <= 'f') {
    return 10 + (hexChar - 'a');
  }
  return -1;
}

void carregarProgramaNaMemoria(String entrada) {
  int indice = 4;
  int tamanho = entrada.length();
  int i = 0;

  while (i < tamanho) {
    if (indice < 100) {
      memoria[indice] = entrada.substring(i, i + 3);
      contagemInstrucoes++;
      i += 4;
      indice++;
    } else {
      break;
    }
  }
}

void executarProgramaNaMemoria() {
  int indice = 4;
  int enderecoMemoriaInstrucao = 0;
  while (indice < contagemInstrucoes) {
    enderecoMemoriaInstrucao = indice;
    memoria[0] = enderecoMemoriaInstrucao;

    String instrucao = memoria[enderecoMemoriaInstrucao];
    printarVetor();
    x = hexCharToInt(instrucao.charAt(0));
    y = hexCharToInt(instrucao.charAt(1));

    memoria[2] = x;
    memoria[3] = y;

    realizaInstrucao(hexCharToInt(instrucao.charAt(2)), hexToBinary(x), hexToBinary(y));
    indice++;
  }
  enderecoMemoriaInstrucao++;
  memoria[0] = enderecoMemoriaInstrucao;
  printarVetor();
  Serial.print("Nao exitem mais instrucoes para serem executadas.");
}

void realizaInstrucao(int opCode, String bits_x, String bits_y) {
 switch (opCode) {
    case 0:
      output = portanot(bits_y);
      break;
    case 1:
      bits_x = portanot(bits_x);
      output = portaand(bits_x, bits_y);
      output = portanot(output);
      break;
    case 2:
      bits_x = portanot(bits_x);
      output = portaand(bits_x, bits_y);
      break;
    case 3:
      output = "0000"; // ZERO LÓGICO
      break;
    case 4:
      output = portaand(bits_x, bits_y);
      output = portanot(output);
      break;
    case 5:
      output = portanot(bits_x);
      break;
    case 6:
      output = portaxor(bits_x, bits_y);
      break;
    case 7:
      bits_y = portanot(bits_y);
      output = portaand(bits_x, bits_y);
      break;
    case 8:
      bits_x = portanot(bits_x);
      bits_y = portanot(bits_y);
      output = portaor(bits_x, bits_y);
      break;
    case 9:
      bits_x = portanot(bits_x);
      bits_y = portanot(bits_y);
      output = portaxor(bits_x, bits_y);
      break;
    case 10:
      output = bits_y;
      break;
    case 11:
      output = portaand(bits_x, bits_y);
      break;
    case 12:
      output = "1111"; // UM LÓGICO
      break;
    case 13:
      bits_y = portanot(bits_y);
      output = portaor(bits_x, bits_y);
      break;
    case 14:
      output = portaor(bits_x, bits_y);
      break;
    case 15:
      output = bits_x;
      break;
    default:
      Serial.println("Op Code invalido");
      break;
  }
  memoria[1] = output;
  atualizarBits();
  atualizarLeds();
  delay(3000);
}

void atualizarLeds() {
  if(bit_0 == 1) {
    digitalWrite(vermelho, HIGH);
  }
  else {
    digitalWrite(vermelho, LOW);
  }

  if(bit_1 == 1) {
    digitalWrite(amarelo, HIGH);
  }
  else {
    digitalWrite(amarelo, LOW);
  }

  if(bit_2 == 1) {
    digitalWrite(verde, HIGH);
  }
  else {
    digitalWrite(verde, LOW);
  }

  if(bit_3 == 1) {
    digitalWrite(azul, HIGH);
  }
  else {
    digitalWrite(azul, LOW);
  }
}

void printarVetor(){
  for (int i = 0; i < contagemInstrucoes; i++) {
    Serial.print(memoria[i]);
    Serial.print("|");
  }
  Serial.println("");
}