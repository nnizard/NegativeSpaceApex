/**
 * @description there is no fail test there because they cannot be catched, meaning that the test would always fail
 */
@isTest
private with sharing class NegativeSpaceDelimiter_UT {
    @isTest
    private static void doesProperlySRunsOnBigEnoughIntegers(){
        Integer tooSmallInteger = 6;
        new NegativeSpaceDelimiter(new dummyIntegerSpaceDefinition()).assertSpace(tooSmallInteger);
        new NegativeSpaceDelimiter(new dummyBigIntegerSpaceDefinition()).assertSpace(tooSmallInteger);
    }

    /**
     * @description return true if the object is an Integer
     */
    private class dummyIntegerSpaceDefinition implements IPositiveSpaceDefinition{
        public Boolean isOfCorrectShape(Object item){
            return item instanceof Integer;
        }
    }

    /**
     * @description return true if the value of object is > 5
     */
    private class dummyBigIntegerSpaceDefinition implements IPositiveSpaceDefinition{
        public Boolean isOfCorrectShape(Object item){
            return Integer.valueOf(item) > 5;
        }
    }
}