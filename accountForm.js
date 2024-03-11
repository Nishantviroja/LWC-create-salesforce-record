import { LightningElement, track } from 'lwc';
import createRecord from '@salesforce/apex/RecordController.createRecord';

export default class AccountForm extends LightningElement {
    @track recordName;
    @track recordDescription;
    // Add more @track variables for additional input fields as needed

    handleNameChange(event) {
        this.recordName = event.target.value;
    }

    handleDescriptionChange(event) {
        this.recordDescription = event.target.value;
    }
    // Add more handler methods for additional input fields as needed

    createRecord() {
        createRecord({ name: this.recordName, description: this.recordDescription })
            .then(result => {
                // Handle success
                console.log('Record created: ', result);
            })
            .catch(error => {
                // Handle error
                console.error('Error creating record: ', error);
            });
    }
}

// Author: Nishant Viroja ( https://nishantviroja.me/ )
