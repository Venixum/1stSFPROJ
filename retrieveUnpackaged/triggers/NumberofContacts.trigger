trigger NumberofContacts on Contact (after insert, after update, after delete) {

    if(Trigger.isAfter && Trigger.isInsert || Trigger.isUpdate){
        NumberofContactsTriggerHandler.handleAfterInsert(Trigger.new);
    }   
    if(Trigger.isAfter && Trigger.isUpdate){
        NumberofContactsTriggerHandler.handleAfterUpdate(Trigger.old);
    }
    if(Trigger.isAfter && Trigger.isDelete){
        NumberofContactsTriggerHandler.handleAfterDelete(Trigger.old);
    }
}