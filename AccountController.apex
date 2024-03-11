/*
    Apex class for handling the creation of a new record in a Salesforce object.
    Author: Nishant Viroja ( https://nishantviroja.me/ )

    Description: This Apex class provides a method to create a new record in a Salesforce object.
*/

public with sharing class AccountController {
    /*
        Method to create a new record in the specified Salesforce object.
        @param name: The name of the record.
        @param description: The description of the record.
        @return: The ID of the newly created record.
    */
    @AuraEnabled
    public static Id createRecord(String name, String description) {
        // Create a new instance of the object (replace 'Account' with your desired object)
        Account newRecord = new Account();
        // Set the fields of the record
        newRecord.Name = name;
        newRecord.Description__c = description;
        // Add more fields as needed
        
        // Insert the record into the Salesforce database
        insert newRecord;
        // Return the ID of the newly created record
        return newRecord.Id;
    }
}
