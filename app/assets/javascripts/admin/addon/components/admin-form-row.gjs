import Component from "@ember/component";
import { classNames } from "@ember-decorators/component";

@classNames("row")
export default class AdminFormRow extends Component {}

<div class="form-element label-area">
  {{#if this.label}}
    <label
      class={{concat-class (if (eq @type "checkbox") "checkbox-label")}}
    >{{i18n this.label}}</label>
  {{else}}
    &nbsp;
  {{/if}}
</div>
<div class="form-element input-area">
  {{#if this.wrapLabel}}
    <label
      class={{concat-class (if (eq @type "checkbox") "checkbox-label")}}
    >{{yield}}</label>
  {{else}}
    {{yield}}
  {{/if}}
</div>