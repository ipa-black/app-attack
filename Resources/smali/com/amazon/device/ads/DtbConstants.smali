.class public Lcom/amazon/device/ads/DtbConstants;
.super Ljava/lang/Object;
.source "DtbConstants.java"


# static fields
.field static AAX_HOSTNAME:Ljava/lang/String; = null

.field static AAX_ROUTE53_ENABLED_CNAME:Ljava/lang/String; = null

.field public static final ADMOB_HEIGHT_KEY:Ljava/lang/String; = "amazon_custom_event_height"

.field static final ADMOB_REQUESTID_MAP_CLEAR_INTERVAL:J = 0x493e0L

.field public static final ADMOB_REQUEST_ID_KEY:Ljava/lang/String; = "amazon_custom_event_request_id"

.field public static final ADMOB_SLOTGROUP_KEY:Ljava/lang/String; = "amazon_custom_event_slot_group"

.field public static final ADMOB_SLOTUUID_KEY:Ljava/lang/String; = "amazon_custom_event_slot_uuid"

.field public static final ADMOB_WIDTH_KEY:Ljava/lang/String; = "amazon_custom_event_width"

.field public static final ADMOB_iSVIDEO_KEY:Ljava/lang/String; = "amazon_custom_event_is_video"

.field static final AD_TRACKING_ENABLED:Ljava/lang/String; = "ad-tracking"

.field static final AMAZON_MOBILE:Ljava/lang/String; = "amazonmobile"

.field public static final APS_ADAPTER_VERSION:Ljava/lang/String; = "amazon_custom_event_adapter_version"

.field public static final APS_ADAPTER_VERSION_2:Ljava/lang/String; = "2.0"

.field static final APS_ANALYTICS_ADDITIONAL_VALUE_SIZE_LIMIT:I = 0x64

.field static final BID_TIMEOUT:I = 0x1388

.field static final BLACK_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final CONFIG_CHECKIN_INTERVAL:J = 0xa4cb800L

.field static final DTB_BETA:I = 0x3

.field static final DTB_CONFIG_ENDPOINT:Ljava/lang/String; = "mads.amazon-adsystem.com"

.field static final DTB_CONFIG_PATH:Ljava/lang/String; = "/msdk/getConfig"

.field static final DTB_DOMAIN:I = 0x1

.field static final DTB_GAMMA:I = 0x2

.field static final DTB_PROD:I = 0x1

.field static final DTB_WEB_RESOURCES:Ljava/lang/String; = "c.amazon-adsystem.com/"

.field static final FIREOS_ADTRACKING_NOT_LIMITED:I = 0x0

.field static final GPS_AVAILABLE_SETTING:Ljava/lang/String; = "gps-available"

.field static final HTTP:Ljava/lang/String; = "http://"

.field static final HTTPS:Ljava/lang/String; = "https://"

.field static final IABCONSENT_CONSENT_STRING:Ljava/lang/String; = "IABConsent_ConsentString"

.field static final IABCONSENT_SUBJECT_TO_GDPR:Ljava/lang/String; = "IABConsent_SubjectToGDPR"

.field static final IABTCF_GDPR_APPLIES:Ljava/lang/String; = "IABTCF_gdprApplies"

.field static final IABTCF_TC_STRING:Ljava/lang/String; = "IABTCF_TCString"

.field static final INTEGRATED_OM_VERSION:Ljava/lang/String; = "1_3_28"

.field static final INTERSTITIAL_HEIGHT:I = 0x270f

.field static final INTERSTITIAL_WIDTH:I = 0x270f

.field static final MDTB_NOT_INITIALIZED:Ljava/lang/String; = "mDTB was not initialized, please use AdRegistration.getInstance(...) before using other SDK calls"

.field static final MEDIATION_ENCODED_PRICE_POINT_LENGTH:I = 0x8

.field static final MEDIATION_NAME:Ljava/lang/String; = "mediationName"

.field static final NETWORK_READ_TIMEOUT:I = 0xea60

.field static final NETWORK_TYPE_LTE:Ljava/lang/String; = "13"

.field static final NETWORK_TYPE_UNKNOWN:Ljava/lang/String; = "0"

.field static final NETWORK_TYPE_WIFI:Ljava/lang/String; = "Wifi"

.field static final OM_JS_ENDPOINT:Ljava/lang/String; = "dcqi4aodgg8tv.cloudfront.net/"

.field static final OM_JS_RESOURCE:Ljava/lang/String; = "resources/omsdk/"

.field static final OM_SDK_DEFAULT_PARTNER_NAME:Ljava/lang/String; = "Amazon1"

.field static final OM_SDK_PARTNER_KEY_NAME:Ljava/lang/String; = "omidPartnerName"

.field static final OM_SDK_PARTNER_VERSION_KEY_NAME:Ljava/lang/String; = "omidPartnerVersion"

.field static final SDK_DISTRIBUTION_KEY_NAME:Ljava/lang/String; = "distribution"

.field static final SDK_DISTRIBUTION_MARKER_WITH_JSON:Ljava/lang/String; = "aps_distribution_marker.json"

.field static final SDK_NAME:Ljava/lang/String; = "Amazon DTB Ads API"

.field static final SDK_VERSION:Ljava/lang/String; = "9.5.4"

.field static final SDK_VERSION_PREFIX:Ljava/lang/String; = "aps-android"

.field static final SIS_CHECKIN_INTERVAL:J = 0x5265c00L

.field static SIS_END_POINT:Ljava/lang/String; = null

.field static final SIS_PING_INTERVAL:J = 0x9a7ec800L

.field static final SIS_SERVER_PATH:Ljava/lang/String; = "/api3"

.field static final adServerPath:Ljava/lang/String; = "/e/msdk/ads"

.field static final adVideoServerPath:Ljava/lang/String; = "/e/vsdk/ads"

.field static final generatePath:Ljava/lang/String; = "/generate_did"

.field static final pingPath:Ljava/lang/String; = "/ping"

.field static final sisEndPoint:Ljava/lang/String; = "s.amazon-adsystem.com/api3"

.field static final updatePath:Ljava/lang/String; = "/update_dev_info"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    .line 92
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "errorCode"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "instrPixelURL"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/DtbConstants;->BLACK_LIST:Ljava/util/List;

    .line 116
    const-string v0, "aax-us.amazon-adsystem.com"

    sput-object v0, Lcom/amazon/device/ads/DtbConstants;->AAX_HOSTNAME:Ljava/lang/String;

    .line 117
    const-string v0, "aax.amazon-adsystem.com"

    sput-object v0, Lcom/amazon/device/ads/DtbConstants;->AAX_ROUTE53_ENABLED_CNAME:Ljava/lang/String;

    .line 118
    const-string v0, "s.amazon-adsystem.com"

    sput-object v0, Lcom/amazon/device/ads/DtbConstants;->SIS_END_POINT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
