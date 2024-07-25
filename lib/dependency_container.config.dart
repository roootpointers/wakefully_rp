// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i5;
import 'package:package_info_plus/package_info_plus.dart' as _i4;
import 'package:wakefully_analyzer/app_router.dart' as _i42;
import 'package:wakefully_analyzer/core/app/bloc/app_bloc.dart' as _i36;
import 'package:wakefully_analyzer/core/authentication/authenication_notifier.dart'
    as _i18;
import 'package:wakefully_analyzer/core/authentication/authentication_repository.dart'
    as _i10;
import 'package:wakefully_analyzer/core/authentication/bloc/authentication_bloc.dart'
    as _i17;
import 'package:wakefully_analyzer/core/authentication/firebase/firebase_auth_data_source.dart'
    as _i9;
import 'package:wakefully_analyzer/core/authentication/firebase/firebase_auth_facade.dart'
    as _i7;
import 'package:wakefully_analyzer/core/authentication/firebase/firebase_authentication_repository.dart'
    as _i11;
import 'package:wakefully_analyzer/core/chat/bloc/chat_bloc.dart' as _i38;
import 'package:wakefully_analyzer/core/purchases/purchases_configurator.dart'
    as _i3;
import 'package:wakefully_analyzer/data/app/app_data_source.dart' as _i21;
import 'package:wakefully_analyzer/data/app/app_repository.dart' as _i27;
import 'package:wakefully_analyzer/data/developer_mode/developer_mode_repository.dart'
    as _i6;
import 'package:wakefully_analyzer/data/developer_mode/developer_purchases_repository.dart'
    as _i29;
import 'package:wakefully_analyzer/data/dreams/dreams_data_source.dart' as _i24;
import 'package:wakefully_analyzer/data/dreams/dreams_repository.dart' as _i31;
import 'package:wakefully_analyzer/data/flows/flows_data_source.dart' as _i15;
import 'package:wakefully_analyzer/data/flows/flows_repository.dart' as _i28;
import 'package:wakefully_analyzer/data/journeys/journeys_data_source.dart'
    as _i20;
import 'package:wakefully_analyzer/data/journeys/journeys_repository.dart'
    as _i23;
import 'package:wakefully_analyzer/data/nightmares/nightmare_data_source.dart'
    as _i14;
import 'package:wakefully_analyzer/data/nightmares/nightmare_repository.dart'
    as _i19;
import 'package:wakefully_analyzer/data/promo_codes/promo_codes_repository.dart'
    as _i22;
import 'package:wakefully_analyzer/data/purchases/purchases_repository.dart'
    as _i25;
import 'package:wakefully_analyzer/data/wakefully_api.dart' as _i13;
import 'package:wakefully_analyzer/features/code_redemption/cubit/code_redemption_cubit.dart'
    as _i30;
import 'package:wakefully_analyzer/features/deep_link/cubit/deep_link_cubit.dart'
    as _i39;
import 'package:wakefully_analyzer/features/dream_decoder/basic/bloc/basic_dream_decoder_bloc.dart'
    as _i33;
import 'package:wakefully_analyzer/features/dream_decoder/developer_mode/bloc/developer_mode_bloc.dart'
    as _i41;
import 'package:wakefully_analyzer/features/dreams/bloc/dreams_bloc.dart'
    as _i34;
import 'package:wakefully_analyzer/features/journal/cubit/dream_details_cubit.dart'
    as _i40;
import 'package:wakefully_analyzer/features/journeys/bloc/journeys_bloc.dart'
    as _i37;
import 'package:wakefully_analyzer/features/login/bloc/login_bloc.dart' as _i16;
import 'package:wakefully_analyzer/features/profile/bloc/profile_bloc.dart'
    as _i26;
import 'package:wakefully_analyzer/features/purchases/bloc/paywall_bloc.dart'
    as _i35;
import 'package:wakefully_analyzer/features/purchases/bloc/purchases_bloc.dart'
    as _i32;
import 'package:wakefully_analyzer/features/purchases/premium_subscription_notifier.dart'
    as _i8;
import 'package:wakefully_analyzer/modules.dart' as _i43;

const String _local = 'local';
const String _dev = 'dev';
const String _prod = 'prod';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<String>(
      () => registerModule.revenueCatGoogleApiKeyDev,
      instanceName: 'RevenueCatGoogleApiKey',
      registerFor: {
        _local,
        _dev,
      },
    );
    gh.factory<String>(
      () => registerModule.revenueCatIosApiKeyDev,
      instanceName: 'RevenueCatIosApiKey',
      registerFor: {
        _local,
        _dev,
      },
    );
    gh.factory<String>(
      () => registerModule.revenueCatGoogleApiKey,
      instanceName: 'RevenueCatGoogleApiKey',
      registerFor: {_prod},
    );
    gh.singleton<_i3.PurchasesConfigurator>(() => _i3.PurchasesConfigurator(
          gh<String>(instanceName: 'RevenueCatGoogleApiKey'),
          gh<String>(instanceName: 'RevenueCatIosApiKey'),
        ));
    gh.factory<String>(
      () => registerModule.revenueCatIosApiKey,
      instanceName: 'RevenueCatIosApiKey',
      registerFor: {_prod},
    );
    await gh.factoryAsync<_i4.PackageInfo>(
      () => registerModule.packageInfo,
      preResolve: true,
    );
    gh.singleton<_i5.Logger>(() => registerModule.logger);
    gh.singleton<_i6.DeveloperModeRepository>(
        () => _i6.DeveloperModeRepository());
    gh.lazySingleton<_i7.FirebaseAuthFacade>(() => _i7.FirebaseAuthFacade());
    gh.lazySingleton<_i8.PremiumSubscriptionNotifier>(
        () => _i8.PremiumSubscriptionNotifier());
    gh.factory<String>(
      () => registerModule.devApiUrl,
      instanceName: 'ApiUrlBase',
      registerFor: {_dev},
    );
    gh.singleton<_i9.FirebaseAuthDataSource>(
        () => _i9.FirebaseAuthDataSource(gh<_i7.FirebaseAuthFacade>()));
    gh.singleton<_i10.AuthenticationRepository>(
        () => _i11.FirebaseAuthenticationRepository(gh<_i5.Logger>()));
    gh.factory<String>(
      () => registerModule.localApiUrl,
      instanceName: 'ApiUrlBase',
      registerFor: {_local},
    );
    gh.lazySingleton<_i12.Dio>(
      () => registerModule.getDevDio(
        gh<_i10.AuthenticationRepository>(),
        gh<String>(instanceName: 'ApiUrlBase'),
      ),
      registerFor: {_dev},
    );
    gh.factory<String>(
      () => registerModule.prodApiUrl,
      instanceName: 'ApiUrlBase',
      registerFor: {_prod},
    );
    gh.factoryParam<_i13.WakefullyApi, String?, dynamic>((
      baseUrl,
      _,
    ) =>
        _i13.WakefullyApi(
          gh<_i12.Dio>(),
          baseUrl: baseUrl,
        ));
    gh.lazySingleton<_i12.Dio>(
      () => registerModule.getProdDio(
        gh<_i10.AuthenticationRepository>(),
        gh<String>(instanceName: 'ApiUrlBase'),
      ),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i14.NightmareDataSource>(
        () => _i14.NightmareDataSourceImpl(gh<_i13.WakefullyApi>()));
    gh.lazySingleton<_i15.FlowsDataSource>(
        () => _i15.FlowsDataSourceImpl(gh<_i13.WakefullyApi>()));
    gh.factory<_i16.LoginBloc>(
        () => _i16.LoginBloc(gh<_i10.AuthenticationRepository>()));
    gh.singleton<_i17.AuthenticationBloc>(
        () => _i17.AuthenticationBloc(gh<_i10.AuthenticationRepository>()));
    gh.lazySingleton<_i12.Dio>(
      () => registerModule.getLocalDio(
        gh<_i10.AuthenticationRepository>(),
        gh<String>(instanceName: 'ApiUrlBase'),
      ),
      registerFor: {_local},
    );
    gh.singleton<_i18.AuthenticationNotifier>(
        () => _i18.AuthenticationNotifier(gh<_i17.AuthenticationBloc>()));
    gh.lazySingleton<_i19.NightmareRepository>(() => _i19.NightmareRepository(
          gh<_i14.NightmareDataSource>(),
          gh<_i5.Logger>(),
        ));
    gh.factory<_i20.JourneysDataSource>(
        () => _i20.JourneysDataSourceImpl(gh<_i13.WakefullyApi>()));
    gh.lazySingleton<_i21.AppDataSource>(
        () => _i21.AppDataSourceImpl(gh<_i13.WakefullyApi>()));
    gh.factory<_i22.PromoCodesRepository>(
        () => _i22.PromoCodesRepository(gh<_i13.WakefullyApi>()));
    gh.factory<_i23.JourneysRepository>(
        () => _i23.JourneysRepositoryImpl(gh<_i20.JourneysDataSource>()));
    gh.factory<_i24.DreamsDataSource>(
        () => _i24.DreamsDataSourceImpl(gh<_i13.WakefullyApi>()));
    gh.lazySingleton<_i25.PurchasesRepository>(
      () => _i25.PurchasesRepositoryImpl(
        gh<_i3.PurchasesConfigurator>(),
        gh<_i5.Logger>(),
        gh<_i8.PremiumSubscriptionNotifier>(),
      ),
      instanceName: 'purchases-repository',
    );
    gh.factory<_i26.ProfileBloc>(() => _i26.ProfileBloc(
          gh<_i17.AuthenticationBloc>(),
          gh<_i10.AuthenticationRepository>(),
        ));
    gh.lazySingleton<_i27.AppRepository>(() => _i27.AppRepository(
          gh<_i21.AppDataSource>(),
          gh<_i5.Logger>(),
        ));
    gh.lazySingleton<_i28.FlowsRepository>(() => _i28.FlowsRepository(
          gh<_i15.FlowsDataSource>(),
          gh<_i5.Logger>(),
        ));
    gh.lazySingleton<_i25.PurchasesRepository>(() =>
        _i29.DeveloperPurchasesRepository(
          gh<_i6.DeveloperModeRepository>(),
          gh<_i25.PurchasesRepository>(instanceName: 'purchases-repository'),
          gh<_i8.PremiumSubscriptionNotifier>(),
        ));
    gh.factory<_i30.CodeRedemptionCubit>(
        () => _i30.CodeRedemptionCubit(gh<_i22.PromoCodesRepository>()));
    gh.factory<_i31.DreamsRepository>(() => _i31.DreamsRepositoryImpl(
          gh<_i24.DreamsDataSource>(),
          gh<_i5.Logger>(),
        ));
    gh.singleton<_i32.PurchasesBloc>(() => _i32.PurchasesBloc(
          gh<_i25.PurchasesRepository>(),
          gh<_i10.AuthenticationRepository>(),
          gh<_i8.PremiumSubscriptionNotifier>(),
        ));
    gh.factory<_i33.BasicDreamDecoderBloc>(
        () => _i33.BasicDreamDecoderBloc(gh<_i31.DreamsRepository>()));
    gh.factory<_i34.DreamsBloc>(
        () => _i34.DreamsBloc(gh<_i31.DreamsRepository>()));
    gh.factory<_i35.PaywallBloc>(() => _i35.PaywallBloc(
          gh<_i5.Logger>(),
          gh<_i32.PurchasesBloc>(),
        ));
    gh.singleton<_i36.AppBloc>(() => _i36.AppBloc(
          gh<_i4.PackageInfo>(),
          gh<_i27.AppRepository>(),
        ));
    gh.factory<_i37.JourneysBloc>(() => _i37.JourneysBloc(
          gh<_i19.NightmareRepository>(),
          gh<_i23.JourneysRepository>(),
          gh<_i10.AuthenticationRepository>(),
          gh<_i8.PremiumSubscriptionNotifier>(),
        ));
    gh.factory<_i38.ChatBloc>(() => _i38.ChatBloc(gh<_i28.FlowsRepository>()));
    gh.factory<_i39.DeepLinkCubit>(
        () => _i39.DeepLinkCubit(gh<_i28.FlowsRepository>()));
    gh.factoryParam<_i40.DreamDetailsCubit, String, dynamic>((
      dreamId,
      _,
    ) =>
        _i40.DreamDetailsCubit(
          dreamId,
          gh<_i31.DreamsRepository>(),
        ));
    gh.singleton<_i41.DeveloperModeBloc>(
      () => _i41.DeveloperModeBloc(
        gh<_i32.PurchasesBloc>(),
        gh<_i6.DeveloperModeRepository>(),
        gh<_i18.AuthenticationNotifier>(),
      ),
      registerFor: {
        _dev,
        _local,
      },
    );
    gh.singleton<_i42.AppRouter>(() => _i42.AppRouter(
          gh<_i17.AuthenticationBloc>(),
          gh<_i36.AppBloc>(),
        ));
    gh.singleton<_i41.DeveloperModeBloc>(
      () => _i41.ProdDeveloperModeBloc(
        gh<_i32.PurchasesBloc>(),
        gh<_i6.DeveloperModeRepository>(),
        gh<_i18.AuthenticationNotifier>(),
      ),
      registerFor: {_prod},
    );
    return this;
  }
}

class _$RegisterModule extends _i43.RegisterModule {}
