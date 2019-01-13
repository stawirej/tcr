package test;

import static org.assertj.core.api.BDDAssertions.then;

import main.Calcualtor;
import org.junit.jupiter.api.Test;

final class CaclulatorScenarios {

    @Test
    void add() {
        // When
        var sum = Calcualtor.add(1, 2);

        // Then
        then(sum).isEqualTo(3);
    }

}
