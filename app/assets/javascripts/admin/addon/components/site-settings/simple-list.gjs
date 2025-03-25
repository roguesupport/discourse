import Component from "@ember/component";
import { action } from "@ember/object";

export default class SimpleList extends Component {
  inputDelimiter = "|";

  @action
  onChange(value) {
    this.set("value", value.join(this.inputDelimiter || "\n"));
  }
}

<SimpleList
  @values={{this.value}}
  @inputDelimiter={{this.inputDelimiter}}
  @onChange={{this.onChange}}
  @choices={{this.setting.choices}}
  @allowAny={{this.setting.allow_any}}
/>