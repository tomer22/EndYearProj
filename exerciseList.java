import java.util.ArrayList;
import java.util.List;

public class exerciseList {
    public static void main(String[] args) {
        Exercise benchPress = new Exercise("Bench press", "push", "chest");
        Exercise dbInclineBench = new Exercise("DB Incline bench", "push", "chest");
        Exercise pecDeck = new Exercise("Pec deck", "push", "chest");
        Exercise shoulderPress = new Exercise("Shoulder press", "push", "shoulders");
        Exercise dbLateralRaises = new Exercise("DB lateral raises", "push", "shoulders");
        Exercise ropeTricepPushDown = new Exercise("Rope tricep push down", "push", "triceps");
        Exercise skullCrushers = new Exercise("Skull Crushers", "push", "triceps");
        Exercise latPullDown = new Exercise("Lat pull down", "pull", "back");
        Exercise machineCableRow = new Exercise("Machine cable row", "pull", "back");
        Exercise pullUp = new Exercise("Pull up", "pull", "back");
        Exercise reversePecDeck = new Exercise("Reverse pec deck", "pull", "back");
        Exercise barBicepCurl = new Exercise("Bar Bicep curl", "pull", "biceps");
        Exercise dbHammerCurls = new Exercise("DB hammer curls", "pull", "biceps");
        Exercise backSquat = new Exercise("Back Squat", "legs", "quadriceps");
        Exercise legPress = new Exercise("Leg press", "legs", "quadriceps");
        Exercise seatedHamstringCurls = new Exercise("Seated Hamstring curls", "legs", "hamstrings");
        Exercise seatedLegExtensions = new Exercise("Seated leg extensions", "legs", "quadriceps");
        Exercise seatedCalfRaises = new Exercise("Seated calf raises", "legs", "calves");
        Exercise deadlift = new Exercise("Deadlift", "legs", "hamstrings");
        Exercise lunges = new Exercise("Lunges", "legs", "quadriceps");
        Exercise cableBicepCurl = new Exercise("Cable bicep curl", "pull", "biceps");
        Exercise standingCalfRaises = new Exercise("Standing calf raises", "legs", "calves");
        Exercise cableChestFlyes = new Exercise("Cable chest flyes", "push", "chest");
        Exercise tricepDips = new Exercise("Tricep dips", "push", "triceps");
        Exercise lyingLegCurl = new Exercise("Lying leg curl", "legs", "hamstrings");
        Exercise chestPress = new Exercise("Chest press", "push", "chest");
        Exercise legAbductor = new Exercise("Leg abductor", "legs", "abductors");
        Exercise legAdductor = new Exercise("Leg adductor", "legs", "adductors");
        Exercise barbellRows = new Exercise("Barbell rows", "pull", "back");
        Exercise dumbbellFlyes = new Exercise("Dumbbell flyes", "push", "chest");
        Exercise cableHammerCurls = new Exercise("Cable hammer curls", "pull", "biceps");
        Exercise tricepKickbacks = new Exercise("Tricep kickbacks", "push", "triceps");
        Exercise declineBenchPress = new Exercise("Decline bench press", "push", "chest");
        Exercise cableReverseFlyes = new Exercise("Cable reverse flyes", "pull", "back");

        List<Exercise> pushExercises = new ArrayList<>();
        List<Exercise> pullExercises = new ArrayList<>();
        List<Exercise> legsExercises = new ArrayList<>();

        pushExercises.add(benchPress);
        pushExercises.add(dbInclineBench);
        pushExercises.add(pecDeck);
        pushExercises.add(shoulderPress);
        pushExercises.add(dbLateralRaises);
        pushExercises.add(ropeTricepPushDown);
        pushExercises.add(skullCrushers);
        pushExercises.add(cableChestFlyes);
        pushExercises.add(tricepDips);
        pushExercises.add(dumbbellFlyes);
        pushExercises.add(declineBenchPress);
        pushExercises.add(chestPress);
        pushExercises.add(tricepKickbacks);
        pushExercises.add(cableChestFlyes);

        pullExercises.add(latPullDown);
        pullExercises.add(machineCableRow);
        pullExercises.add(pullUp);
        pullExercises.add(reversePecDeck);
        pullExercises.add(barBicepCurl);
        pullExercises.add(dbHammerCurls);
        pullExercises.add(barbellRows);
        pullExercises.add(cableHammerCurls);
        pullExercises.add(cableReverseFlyes);

        legsExercises.add(backSquat);
        legsExercises.add(legPress);
        legsExercises.add(seatedHamstringCurls);
        legsExercises.add(seatedLegExtensions);
        legsExercises.add(seatedCalfRaises);
        legsExercises.add(deadlift);
        legsExercises.add(lunges);
        legsExercises.add(legAbductor);
        legsExercises.add(legAdductor);
        legsExercises.add(lyingLegCurl);
        legsExercises.add(standingCalfRaises);
    }

}
