package com.demo;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class CalculatorTest {

    @Test
    public void testAddition() {

        Calculator calc = new Calculator();

        assertEquals(5, calc.add(2,3));
    }
}
