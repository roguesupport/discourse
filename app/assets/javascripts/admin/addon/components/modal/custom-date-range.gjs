import Component from "@glimmer/component";
import { tracked } from "@glimmer/tracking";
import { action } from "@ember/object";

export default class CustomDateRange extends Component {
  @tracked startDate = this.args.model.startDate;
  @tracked endDate = this.args.model.endDate;

  @action
  onChangeDateRange(range) {
    this.startDate = range.from;
    this.endDate = range.to;
  }

  @action
  updateDateRange() {
    this.args.model.setCustomDateRange(this.startDate, this.endDate);
    this.args.closeModal();
  }
}

<DModal
  class="custom-date-range-modal"
  @title={{i18n "admin.dashboard.reports.dates"}}
  @closeModal={{@closeModal}}
>
  <:body>
    <DateTimeInputRange
      @from={{this.startDate}}
      @to={{this.endDate}}
      @onChange={{this.onChangeDateRange}}
      @showFromTime={{false}}
      @showToTime={{false}}
    />
  </:body>
  <:footer>
    <DButton
      @action={{this.updateDateRange}}
      @label="admin.dashboard.reports.refresh_report"
      @icon="arrows-rotate"
    />
  </:footer>
</DModal>