//Implementação de uma programa de resolução de fatorial
//para maquina Norma, Disciplina Teoria da Computação - UFERSA
//executar o codigo no https://dartpad.dev/dart?null_safety=true
//ou na sua ide preferida com o sdk do dart instalado.
void main() {
  int reg_A = 10; //entrada
  int reg_B = 0;
  int reg_C = 0;
  int reg_D = 0;
  int reg_E = 0;
  int reg_F = 0;

  while (reg_A != 0) {
    reg_A = reg_A - 1;
    reg_B = reg_B + 1;
    reg_C = reg_C + 1;
    reg_D = reg_D + 1;
  }

  reg_B = reg_B - 1;
  reg_C = reg_C - 1;

  while (reg_D != 0) {
    reg_D = reg_D - 1;
    reg_A = reg_A + 1;
  }

  reg_C = reg_C - 1;

  while (reg_C != 0) {
    while (reg_A != 0) {
      reg_E = reg_E + 1;
      reg_A = reg_A - 1;
    }
    while (reg_E != 0) {
      while (reg_B != 0) {
        reg_A = reg_A + 1;
        reg_F = reg_F + 1;
        reg_B = reg_B - 1;
      }
      while (reg_F != 0) {
        reg_B = reg_B + 1;
        reg_F = reg_F - 1;
      }
      reg_E = reg_E - 1;
    }
    reg_B = reg_B - 1;
    reg_C = reg_C - 1;
  }

  print(reg_A);
}

//Implementação em pseudolinguagem

//A := 4
//B := 0
//C := 0
//D := 0
//E := 0
//F := 0


//ATÉ A = 0
//	FAÇA (A := A - 1; B:= B + 1; C := C + 1; D := D + 1)
//	B := B - 1
//	C := C - 1
//ATÉ D = 0
//	FAÇA (D := D - 1; A := A + 1)
//	C := C - 1

//ATÉ C = 0
//	ATÉ A = 0
//		FAÇA (E := E + 1; A := A - 1)
//	ATÉ E = 0
//		FAÇA (até B = 0
//			FAÇA (A := A + 1; F := F + 1; B := B - 1)
//		ATÉ F = 0
//			FAÇA (B := B + 1; F := F – 1)
//		E := E - 1)
//	B := B - 1
//	C := C - 1
