package calculator;

import org.junit.jupiter.api.Test;

import static org.assertj.core.api.BDDAssertions.then;

final class CalculatorScenarios {

    @Test
    void sum(){

        // When
        var sum = Calculator.sum(1, 2);
        // Then
        then(sum).isEqualTo(3);
    }

}

