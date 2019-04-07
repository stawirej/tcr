package calculator;

import static org.assertj.core.api.BDDAssertions.then;

import org.junit.jupiter.api.Test;

final class CalculatorScenarios {

    @Test
    void addNumbers() {
        // Given

        // When
        int sum = 3;

        // Then
        then(sum).isEqualTo(3);
    }
}
