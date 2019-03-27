package test;

import static org.assertj.core.api.BDDAssertions.then;

import org.junit.jupiter.api.Test;

final class CaclulatorScenarios {

    @Test
    void addNumbers(){
        // Given

        // When
        int sum = Calculator.sum(1, 2);
        // Then
        then(sum).isEqualTo(3);
    }
}
