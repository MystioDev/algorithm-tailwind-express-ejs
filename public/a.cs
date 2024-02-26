static int legMelegebbNap() {
    int[] napokHomerseklete = {0, 300, 20, 32, 57, 10, 11, 2, 10, 400};

    int legmagasabb = 0;

    for (int nap = 0; nap < napokHomerseklete.Length; nap++) {
        if (napokHomerseklete[nap] > napokHomerseklete.[legmagasabb]) {
            legmagasabb = nap;
        }
    }

    return legmagasabb;
}

static void sorbaRendezes() {
    int[] tomb = {0, 300, 20, 32, 57, 10, 11, 2, 10, 400};

    for (int i = 0; i < lista.Length - 1; i++) {
        for (int j = i+1; j < lista.Length; j++) {
            if (lista[i] > lista[j]) {
                int csere = lista[i];
                lista[i] = lista[j];
                tomb[j] = csere;
            }
        }
    }
}

static void sorbaRendezes() {
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

static void Main(string[] args) {
    Console.WriteLine($"A legmelegebb nap a(z) {legMelegebbNap()}. nap volt az évben.");
}