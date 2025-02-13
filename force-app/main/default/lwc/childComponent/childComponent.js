import { LightningElement } from 'lwc';
export default class ChildComponent extends LightningElement {

    inputValue = '';

    closeModal() {
        this.dispatchEvent(new CustomEvent('closemodal'));
    }

    handleInputChange(event) {
        this.inputValue = event.target.value;
    }

    handleSave() {
        this.dispatchEvent(new CustomEvent('save', { detail: this.inputValue }));
    }
}