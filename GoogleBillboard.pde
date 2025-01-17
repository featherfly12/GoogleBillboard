public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";

public void setup() {
    for (int i = 2; i <= e.length() - 10; i++) {
        String digits = e.substring(i, i + 10);
        double dNum = Double.parseDouble(digits);

        if (isPrime(dNum)) {
            println("First 10-digit prime in e: " + digits);
            break; 
        }
    }

    noLoop(); 
}

public void draw() {
}

public boolean isPrime(double dNum) {
    long num = (long) dNum;

    if (num < 2) return false; 
    if (num == 2 || num == 3) return true; 
    if (num % 2 == 0 || num % 3 == 0) return false; 

    for (long i = 5; i * i <= num; i += 6) {
        if (num % i == 0 || num % (i + 2) == 0) return false;
    }

    return true;
}


