import Component from "@ember/component";

export default class Enum extends Component {}

<ComboBox
  @content={{this.setting.validValues}}
  @value={{this.value}}
  @onChange={{fn (mut this.value)}}
  @valueProperty={{this.setting.computedValueProperty}}
  @nameProperty={{this.setting.computedNameProperty}}
  @options={{hash castInteger=true allowAny=this.setting.allowsNone}}
/>

{{this.preview}}