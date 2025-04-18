import RouteTemplate from "ember-route-template";
import DBreadcrumbsItem from "discourse/components/d-breadcrumbs-item";
import DPageHeader from "discourse/components/d-page-header";
import NavItem from "discourse/components/nav-item";
import { i18n } from "discourse-i18n";

export default RouteTemplate(
  <template>
    <DPageHeader
      @titleLabel={{i18n "admin.config.flags.title"}}
      @descriptionLabel={{i18n "admin.config.flags.header_description"}}
      @learnMoreUrl="https://meta.discourse.org/t/moderation-flags/325589"
    >
      <:breadcrumbs>
        <DBreadcrumbsItem @path="/admin" @label={{i18n "admin_title"}} />
        <DBreadcrumbsItem
          @path="/admin/config/flags"
          @label={{i18n "admin.config.flags.title"}}
        />
      </:breadcrumbs>
      <:actions as |actions|>
        <actions.Primary
          @route="adminConfig.flags.new"
          @title="admin.config_areas.flags.add"
          @label="admin.config_areas.flags.add"
          @disabled={{@controller.addFlagButtonDisabled}}
          class="admin-flags__header-add-flag"
        />
      </:actions>
      <:tabs>
        <NavItem
          @route="adminConfig.flags.settings"
          @label="settings"
          class="admin-flags-tabs__settings"
        />
        <NavItem
          @route="adminConfig.flags.index"
          @label="admin.config_areas.flags.flags_tab"
          class="admin-flags-tabs__flags"
        />
      </:tabs>
    </DPageHeader>

    <div class="admin-container admin-config-page__main-area">
      {{outlet}}
    </div>
  </template>
);
