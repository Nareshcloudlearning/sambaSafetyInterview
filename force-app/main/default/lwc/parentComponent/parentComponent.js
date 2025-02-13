import { LightningElement } from 'lwc';
export default class ParentComponent extends LightningElement {
    buttonLabel = 'Please Click';
    isModalOpen = false;

    openModal() {
        this.isModalOpen = true;
    }

    handleCloseModal() {
        this.isModalOpen = false;
    }

    updateButtonLabel(event) {
        this.buttonLabel = event.detail;
        this.isModalOpen = false;
    }
}