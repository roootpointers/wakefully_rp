import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wakefully_analyzer/data/contracts/create_dream_request.dart';
import 'package:wakefully_analyzer/data/contracts/create_script_flip_request.dart';
import 'package:wakefully_analyzer/data/contracts/flow_block.dart';
import 'package:wakefully_analyzer/data/contracts/goto_flow_block_request.dart';
import 'package:wakefully_analyzer/data/contracts/script_flip.dart';
import 'package:wakefully_analyzer/data/contracts/version_info.dart';

import 'contracts/blob.dart';
import 'contracts/continue_flow_request.dart';
import 'contracts/dream.dart';
import 'contracts/dream_details.dart';
import 'contracts/dream_type.dart';
import 'contracts/redeem_promo_code_request.dart';

part 'wakefully_api.g.dart';

@injectable
@RestApi()
abstract class WakefullyApi {
  @factoryMethod
  factory WakefullyApi(Dio dio, {@factoryParam String? baseUrl}) =
      _WakefullyApi;

  @GET("/api/dreams/types")
  Future<List<DreamType>> getDreamTypes();

  @POST("api/flows/{idOrSlug}")
  Future<FlowBlock> startFlow(@Path("idOrSlug") String idOrSlug,
      @Body() Map<String, String> parameters);

  @POST("api/flows/{idOrSlug}/startat/{flowBlockId}")
  Future<FlowBlock> startFlowAt(
      @Path("idOrSlug") String idOrSlug,
      @Path("flowBlockId") int flowBlockId,
      @Body() Map<String, String> parameters);

  @POST("api/flows/{idOrSlug}")
  Future<FlowBlock> getNextFlowBlock(@Path("idOrSlug") String idOrSlug,
      @Body() Map<String, String> parameters);

  @POST("api/flows/{idOrSlug}/{step}")
  Future<FlowBlock> continueFlow(@Path("idOrSlug") String idOrSlug,
      @Path("step") int step, @Body() ContinueFlowRequest request);

  @POST("api/flows/{idOrSlug}/goto")
  Future<FlowBlock> gotoFlowBlock(
      @Path("idOrSlug") String idOrSlug, @Body() GotoFlowBlockRequest request);

  @GET("api/dreams")
  Future<List<Dream>> getDreams();

  @GET("api/dreams/latest")
  Future<Dream?> getLatestDream();

  @POST("api/dreams")
  Future saveDream(@Body() CreateDreamRequest request);

  @GET("api/nightmares/latest/scriptflip")
  Future<String?> getLatestScriptFlip();

  @POST("api/nightmares/scriptflip")
  Future createScriptFlip(@Body() CreateScriptFlipRequest request);

  @GET("api/blobs/mine")
  Future<List<Blob>> getMyBlobs();

  @GET("api/blobs/dream/latest")
  Future<Blob?> getLatestDreamBlob();

  @GET("api/nightmares/scriptflips/mine")
  Future<List<ScriptFlip>> getMyScriptFlips();

  @GET("api/versioninfos")
  Future<VersionInfo> getVersionInfo();

  @POST("api/journeys/{journeyId}/continue")
  Future<FlowBlock> continueJourney(@Path("journeyId") String journeyId);

  @POST("api/promocodes/redeem")
  Future redeemPromoCode(@Body() RedeemPromoCodeRequest request);

  @GET("api/dreams/{dreamId}/details")
  Future<DreamDetails> getDreamDetails(@Path("dreamId") String dreamId);
}
