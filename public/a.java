public static int legMelegebbNap() {
    int[] napokHomerseklete = {0, 300, 20, 32, 57, 10, 11, 2, 10, 400};

    int legmagasabb = 0;

    for (int nap = 0; nap < napokHomerseklete.length; nap++) {
        if (napokHomerseklete[nap] > napokHomerseklete[legmagasabb]) {
            legmagasabb = nap;
        }
    }

    return legmagasabb;
}

public static void sorbaRendezes() {
    int[] tomb = {0, 300, 20, 32, 57, 10, 11, 2, 10, 400};

    for (int i = 0; i < tomb.length - 1; i++) {
        for (int j = i+1; j < tomb.length; j++) {
            if (tomb[i] > tomb[j]) {
                int csere = tomb[i];
                tomb[i] = tomb[j];
                tomb[j] = csere;
            }
        }
    }
}

public static void sorbaRendezes() {
    int[] tomb = {0, 300, 20, 32, 57, 10, 11, 2, 10, 400};

    for (int i = 0; i < tomb.length-1; i++) {
        for (int j = 0; j < tomb.length-i-1; j++) {
            if (tomb[j] > tomb[j+1]) {

                int temp = tomb[j];
                tomb[j] = tomb[j+1];
                tomb[j+1] = temp;
            }
        }
    }
}


public static void main(String[] args) {
    System.out.println("A legmelegebb nap a(z) " + legMelegebbNap() + ". nap volt az évben.");
}