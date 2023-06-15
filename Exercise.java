public class Exercise implements Comparable<Exercise> {
    // We can have a "video" index variable that can connect the correct video string or address to the correct exercise so it'll be easier to display it on the screen
    private String eN;
    private String mT;
    private String tM;
    private int sets;
    private int TPS;
    private int TFR;

    // Constructors
    public Exercise(String equipmentName, String movementType, String targetMuscle, int s, int timePerSet, int timeForRest) {
        eN = equipmentName;
        mT = movementType;
        tM = targetMuscle;
        sets = s;
        TPS = timePerSet;
        TFR = timeForRest;


    }

    public Exercise(String equipmentName, String movementType, String targetMuscle) {
        eN = equipmentName;
        mT = movementType;
        tM = targetMuscle;
        //going based on averages / standard active and rest times
        sets = 3;
        TPS = 60;
        TFR = 120;
    }

    public String getEquipmentName() {
        return eN;
    }

    public String getMovementType() {
        return mT;
    }

    public String getTargetMuscle() {
        return tM;
    }

    public int getSets() {
        return sets;
    }

    public int getTimePerSet() {
        return TPS;
    }

    public int getTimePerRest() {
        return TFR;
    }

    public int calculateTotalTime() {
        int totalRestTime = (sets - 1) * TFR;
        return (sets * TPS) + totalRestTime;
    }

    @Override
    public int compareTo(Exercise other) {
        // This compare to is a bit different than a normal compare to since it has 4 categories that are special to this class. A negative number implies that the
        // exercises are completely different and do not go together in a PPL split or in the same workout. A 0 implies they're the same exercise. A 1 implies they
        // are the same movement type and target muscle just a different machine / exercise (example: cable row and lat pull down, both are pull and target back). And
        // a 2 implies that the movement type is the same but it does not target the same muslce (example: lat pull down and bicep curls).
        if (eN.equals(other.getEquipmentName())) {
            return 0;
        } else if (mT.equals(other.getMovementType())) {
            if (tM.equals(other.getTargetMuscle())) {   
                return 1;
            }
            return 2;
        }
        return -1;
    }
}

