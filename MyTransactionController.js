({
	myAction : function(component, event, helper) {
        var action = component.get("c.getTransactions");

        action.setCallback(this, function(data) {
            component.set("v.myOutputs", data.getReturnValue());
        });
        $A.enqueueAction(action);
	}
})
