package EP04;

import java.io.*;

public class Instrucoes {
    private char X;
    private char Y;
    private char W;

    public Instrucoes() {
        this.X = '0';
        this.Y = '0';
        this.W = '0';
    }


    public static void main(String[] args) {
        Instrucoes instrucoes = new Instrucoes();
        File arquivo_fonte = new File("testeula.ula");
        String arquivo_saida = "testeula.hex";
        try (BufferedReader br = new BufferedReader(new FileReader(arquivo_fonte));
             BufferedWriter bw = new BufferedWriter(new FileWriter(arquivo_saida))) {
            
            br.readLine();
            String linha;
            while((linha = br.readLine()) != null) {
                if (linha.contains(";")) {
                    linha = linha.replace(";", ""); // Remove o ponto e vírgula
                }
                System.out.println(linha);
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


    public char mnemonicos(String mnemonico) {
        if(mnemonico.equals("nB")) {
            return '0';
        }
        if(mnemonico.equals("nAeBn")) {
            return '1';
        }
        if(mnemonico.equals("nAeB")) {
            return '2';
        }
        if(mnemonico.equals("Lzero")) {
            return '3';
        }
        if(mnemonico.equals("AeBn")) {
            return '4';
        }
        if(mnemonico.equals("nA")) {
            return '5';
        }
        if(mnemonico.equals("AxB")) {
            return '6';
        }
        if(mnemonico.equals("AenB")) {
            return '7';
        }
        if(mnemonico.equals("nAonB")) {
            return '8';
        }
        if(mnemonico.equals("nAxnB")) {
            return '9';
        }
        if(mnemonico.equals("Bcopia")) {
            return 'A';
        }
        if(mnemonico.equals("AeB")) {
            return 'B';
        }
        if(mnemonico.equals("Lum")) {
            return 'C';
        }
        if(mnemonico.equals("AonB")) {
            return 'D';
        }
        if(mnemonico.equals("AoB")) {
            return 'E';
        }
        if(mnemonico.equals("Acopia")) {
            return 'F';
        }
        return 'N';
    }
}
