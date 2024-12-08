/*
 * Author: Spencer Stein
 */


public class Josephus {
    public static void main(String[] args) {
        int n = Integer.parseInt(args[0]);
        int m = Integer.parseInt(args[1]);
        if (n <= 0 || m <= 0) {
            System.out.println("N and M must be positive integers."); //in case a negative number was entered
            return;
        }

        boolean[] e = new boolean[n]; // array to keep track of eliminated people
        int c = 0; // c is the count or the number of eliminated people 
        int j = 0; // j is the index the current position in the circle

        // Process of elimination
        while (c < n) {
            for (int i = 0; i < n;) {
                if (!e[j]) {
                    i++;
                }
                if (i < n) {
                    j = (j + 1) % n; // move to the next person in the circle
                }
            }
            e[j] = true; // mark the person as eliminated
            c++; // increase the count of eliminated persons
            System.out.print(j);
            if (c < n) {
                System.out.print(" "); // print spaces if there is more than one to make it look better
            }
        }
    }
}
