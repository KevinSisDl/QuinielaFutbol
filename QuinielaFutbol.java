import java.util.Scanner;

public class QuinielaFutbol {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        String[][] enfrentamientos = new String[10][10];
        String[][] resultados = new String[10][10];
        String[] nombresEquipos = new String[10];
        String equipo1, equipo2, resultado;
        int identificadorX, identificadorZ;

        for (int x = 0; x < 10; x++) {
            for (int z = 0; z < 10; z++) {
                enfrentamientos[x][z] = " ";
                resultados[x][z] = "";
            }
        }

        for (int x = 0; x < 10; x++) {
            System.out.print("Ingrese el nombre del Equipo " + (x + 1) + ": ");
            nombresEquipos[x] = scanner.nextLine();
        }

        for (int x = 0; x < 5; x++) {
            System.out.print("Ingrese el nombre del Equipo 1 del partido " + (x + 1) + ": ");
            equipo1 = scanner.nextLine();

            System.out.print("Ingrese el nombre del Equipo 2 del partido " + (x + 1) + ": ");
            equipo2 = scanner.nextLine();

            identificadorX = -1;
            identificadorZ = -1;

            for (int z = 0; z < 10; z++) {
                if (nombresEquipos[z].equals(equipo1)) {
                    identificadorX = z;
                }
                if (nombresEquipos[z].equals(equipo2)) {
                    identificadorZ = z;
                }
            }

            if (identificadorX == -1 || identificadorZ == -1) {
                System.out.println("Error: Uno de los equipos no fue encontrado. Intente nuevamente.");
                x--; 
            } else {
                System.out.print("Ingrese el resultado del partido (x-y): ");
                resultado = scanner.nextLine();

                enfrentamientos[identificadorX][identificadorZ] = "x";
                resultados[identificadorX][identificadorZ] = resultado;
                enfrentamientos[identificadorZ][identificadorX] = "x";
                resultados[identificadorZ][identificadorX] = resultado;
            }
        }

        System.out.println("-------------------------------------------------------------------");
        System.out.println("                         ENFRENTAMIENTOS               ");
        System.out.println("-------------------------------------------------------------------");
        System.out.print("Enfrentamientos | ");
        for (String nombre : nombresEquipos) {
            System.out.printf("%-3s | ", nombre);
        }
        System.out.println();
        System.out.println("-------------------------------------------------------------------");

        for (int x = 0; x < 10; x++) {
            System.out.printf("%-15s | ", nombresEquipos[x]);
            for (int z = 0; z < 10; z++) {
                System.out.printf("%-3s | ", enfrentamientos[x][z]);
            }
            System.out.println();
        }
        System.out.println("-------------------------------------------------------------------");

        System.out.println(" ");

        System.out.println("-------------------------------------------------------------------");
        System.out.println("                         RESULTADOS               ");
        System.out.println("-------------------------------------------------------------------");
        System.out.print("Resultados      | ");
        for (String nombre : nombresEquipos) {
            System.out.printf("%-3s | ", nombre);
        }
        System.out.println();
        System.out.println("-------------------------------------------------------------------");

        for (int x = 0; x < 10; x++) {
            System.out.printf("%-15s | ", nombresEquipos[x]);
            for (int z = 0; z < 10; z++) {
                System.out.printf("%-3s | ", resultados[x][z]);
            }
            System.out.println();
        }
        System.out.println("-------------------------------------------------------------------");

        scanner.close();
    }
}


