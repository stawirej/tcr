package calculator;

import static org.assertj.core.api.Java6BDDAssertions.then;

import org.junit.jupiter.api.Test;

final class CalculatorScenarios {

    @Test
    void sum(){
        // Given

        // When
        var sum = Calculator.sum(1, 2);

        // Then
        then(sum).isEqualTo(3);
    }
}

