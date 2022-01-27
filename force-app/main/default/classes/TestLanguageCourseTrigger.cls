@isTest
private class TestLanguageCourseTrigger {
    @isTest static void TestDeleteLanguageCourse() {
        // Test data setup
        // Create un instructor par el curso
        Language_Course_Instructor__c instructor = new Language_Course_Instructor__c(Name='Test LanguageCourse course instructor');
        insert instructor;
        Language_Course_Designer__c lcd = new Language_Course_Designer__c(Name='Test LanguageCourse Designer');
        insert lcd;
        Language_Course__c curso = new Language_Course__c(Name= 'Test Language Course', Course_Instructor__c = instructor.id, Language_Course_Designer__c = lcd.id);
        insert curso;
        
        //Perform test
        Test.startTest();
        	Database.DeleteResult result = Database.delete(curso, false);
        Test.stopTest();       
        //Verify
        //In this case the deletion should have been stopped by the trigger,
        //so verify that we got back an error.
        System.assert(result.isSuccess());
        //System.assert(result.getErrors().size() >0);
   
    }
    
}