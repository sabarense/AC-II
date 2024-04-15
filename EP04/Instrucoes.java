package EP04;

import java.io.*;

public class Instrucoes {
    private char X; // registrador X
    private char Y; // registrador Y
    private char W; // instrucao

    public Instrucoes() {
        this.X = '0'; // inicializando com 0
        this.Y = '0'; // inicializando com 0
        this.W = '0'; // inicializando com 0
    }

    // metodo main
    public static void main(String[] args) {
        Instrucoes instrucoes = new Instrucoes();
        File arquivo_fonte = new File("/home/group/Desktop/AC-II/EP04/testeula1.ula");
        String arquivo_saida = "/home/group/Desktop/AC-II/EP04/testeula.hex";

        // lendo o arquivo de entrada e escrevendo no arquivo de saida
        try (BufferedReader br = new BufferedReader(new FileReader(arquivo_fonte));
             BufferedWriter bw = new BufferedWriter(new FileWriter(arquivo_saida))) {

            br.readLine();
            String linha;

            // lendo o arquivo de entrada
            while((linha = br.readLine()) != null) {
                if (linha.contains(";")) {
                    linha = linha.replace(";", ""); // removendo o ; e substituindo por um espaço vazio
                }
                System.out.println(linha); // testando

                // verificando se a linha contem X, Y ou W
                if(linha.charAt(0) == 'X') {
                    instrucoes.setX(linha.charAt(2));
                }
                else if(linha.charAt(0) == 'Y') {
                    instrucoes.setY(linha.charAt(2));
                }
                else if(linha.charAt(0) == 'W') {
                    String[] parts = linha.split("=");
                    instrucoes.setW(instrucoes.mnemonicos(parts[1]));
                    bw.write(instrucoes.getX() + "" + instrucoes.getY() + "" + instrucoes.getW() + "\n");
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    // metodos get e set
    public void setX(char X) {
        this.X = X;
    }

    public void setY(char y) {
        this.Y = y;
    }

    public void setW(char W) {
        this.W = W;
    }

    public char getX() {
        return this.X;
    }

    public char getY() {
        return this.Y;
    }

    public char getW() {
        return this.W;
    }

    // metodo que retorna o mnemonico
    public char mnemonicos(String mnemonico) {
        switch (mnemonico) {
            case "nB":
                return '0';
            case "nAeBn":
                return '1';
            case "nAeB":
                return '2';
            case "Lzero":
                return '3';
            case "AeBn":
                return '4';
            case "nA":
                return '5';
            case "AxB":
                return '6';
            case "AenB":
                return '7';
            case "nAonB":
                return '8';
            case "nAxnB":
                return '9';
            case "Bcopia":
                return 'A';
            case "AeB":
                return 'B';
            case "Lum":
                return 'C';
            case "AonB":
                return 'D';
            case "AoB":
                return 'E';
            case "Acopia":
                return 'F';
        }
        return 'N';
    }
}
