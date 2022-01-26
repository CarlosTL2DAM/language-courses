trigger LanguageCourseTrigger on Language_Course__c (after insert, after update, after delete) {
    EmailManager.sendMail('chals0@hotmail.com', 'Inserccion/Actualizacion/Borrado de Curso', 'Se ha producido un cambio.');
    EmailManager.sendMail('frangardo2002@gmail.com', 'Inserccion/Actualizacion/Borrado de Curso', 'Se ha producido un cambio.');
}