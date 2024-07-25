part of 'developer_mode_bloc.dart';

@freezed
class DeveloperModeEvent with _$DeveloperModeEvent {
  const factory DeveloperModeEvent.enabledToggled() = _EnabledToggled;
  const factory DeveloperModeEvent.setPremiumSubscription(bool value) =
      _SetPremiumSubscription;
  const factory DeveloperModeEvent.premiumSubscriptionToggled() =
      _PremiumSubscriptionToggled;

  const factory DeveloperModeEvent.disabled() = _Disabled;
}
