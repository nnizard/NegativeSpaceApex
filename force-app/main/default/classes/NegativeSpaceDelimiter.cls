/**
 * @description abstraction that allows for more manageable Negative space management
 */
public with sharing class NegativeSpaceDelimiter {
    IPositiveSpaceDefinition definition;
    public NegativeSpaceDelimiter(IPositiveSpaceDefinition def) {
        this.definition = def;
    }

    // will throw an uncatchable assert exception if the item object is not of the correct shape
    public void assertSpace(Object item){
        Assert.isTrue(definition.isOfCorrectShape(item));
    }
}