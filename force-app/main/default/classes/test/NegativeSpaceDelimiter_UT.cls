@isTest
private with sharing class NegativeSpaceDelimiter_UT {
    @isTest
    private static void doesProperlySRunsOnBigEnoughIntegers(){
        Integer notTooSmallInteger = 6;
        new NegativeSpaceDelimiter(new dummyIntegerSpaceDefinition()).assertSpace(notTooSmallInteger);
        new NegativeSpaceDelimiter(new dummyBigIntegerSpaceDefinition()).assertSpace(notTooSmallInteger);
    }

    /**
     * @description validates that an object is an Integer
     */
    private class dummyIntegerSpaceDefinition implements IPositiveSpaceDefinition{
        public Boolean isOfCorrectShape(Object item){
            return item instanceof Integer;
        }
    }

    /**
     * @description validates that the value of an object is > 5
     */
    private class dummyBigIntegerSpaceDefinition implements IPositiveSpaceDefinition{
        public Boolean isOfCorrectShape(Object item){
            return Integer.valueOf(item) > 5;
        }
    }
}