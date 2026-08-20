.class public Lcom/appsgeyser/sdk/configuration/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/sdk/configuration/Constants$BannerLoadTags;,
        Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;
    }
.end annotation


# static fields
.field public static final AD_SERVER_DOMAIN_URL:Ljava/lang/String; = "https://ads.appsgeyser.com/"

.field public static final APP_METRICA_ID:Ljava/lang/String; = "34e75064-5ba5-4fac-b092-dc10aa167be0"

.field public static final CHECK_STATUS_URL:Ljava/lang/String; = "https://ads.appsgeyser.com/checkstatus.php"

.field public static final CONFIG_DOMAIN_URL:Ljava/lang/String; = "https://config.appsgeyser.com/"

.field public static final CONFIG_KEY_BASE:Ljava/lang/String; = "appsgeyser.com/"

.field public static final CUSTOM_HTML_ABOUT_URL:Ljava/lang/String; = "https://www.appsgeyser.com/branding/"

.field public static final DOMAIN_URL:Ljava/lang/String; = "https://www.appsgeyser.com"

.field public static final FULLSCREEN_BANNER_DEFAULT_FREQUENCY_TIMER:I = 0x1d4c0

.field public static final FULLSCREEN_BANNER_DEFAULT_INTENSITY_POINTS:I = 0x64

.field public static final FULLSCREEN_BANNER_DEFAULT_PENDING_REQUEST_TIMER:I = 0x3a98

.field public static final FULLSCREEN_BANNER_DELAY:I = 0x7d0

.field public static final FULLSCREEN_BANNER_MIN_FREQUENCY_TIMER:I = 0x3a98

.field public static final FULLSCREEN_BANNER_MIN_PENDING_REQUEST_TIMER:I = 0x2710

.field public static final INAPP_PURCHASES_ID_DISABLE_ADS:Ljava/lang/String; = "disable_ads"

.field public static final LOG_DEBUG_ENABLED:Z = true

.field public static final LOG_DEBUG_TAG:Ljava/lang/String; = "*** AppsgeyserSDK Debug"

.field public static final LOG_ERROR_ENABLED:Z = true

.field public static final LOG_ERROR_TAG:Ljava/lang/String; = "AppsgeyserSDK"

.field public static final LOG_FS_BANNER_JS_ERRORS_TAG:Ljava/lang/String; = "FSBannerJsError"

.field public static final LOG_INFO_ENABLED:Z = true

.field public static final LOG_INFO_TAG:Ljava/lang/String; = "AppsgeyserSDK Info:"

.field public static final LOG_SMALL_BANNER_JS_ERRORS_TAG:Ljava/lang/String; = "SmallBannerJsError"

.field public static final NATIVE_BANNER_DEFAULT_STEP:I = 0xa

.field public static final NATIVE_BANNER_DELAY:I = 0x7530

.field public static final NATIVE_BANNER_MAIN_PLACEMENT_TAG:Ljava/lang/String; = "ALL"

.field public static final PAUSED_CONTENT_INFO_URL:Ljava/lang/String; = "https://www.appsgeyser.com/paused/"

.field public static final PLATFORM_VERSION:Ljava/lang/String; = "2.48.s"

.field public static final PREFS_APPSGEYSER_EULA_ACCEPTED:Ljava/lang/String; = "appsgeyserSdk_eulaAccepted"

.field public static final PREFS_APPSGEYSER_FULLSCREEN_LAST_REQUEST_TIMING:Ljava/lang/String; = "appsgeyserSdk_lastRequestTiming"

.field public static final PREFS_APPSGEYSER_REMINDER_LAST_SET_TIMING:Ljava/lang/String; = "appsgeyserSdk_lastReminderSetTiming"

.field public static final PREFS_APPSGEYSER_SDK_ACTIVATED:Ljava/lang/String; = "appsgeyserSdk_isActive"

.field public static final PREFS_CONFIG_BAN_ACTIVE:Ljava/lang/String; = "ConfigAppBanned"

.field public static final PREFS_CONFIG_PHP_URL:Ljava/lang/String; = "ConfigPhpURLWithParams"

.field public static final PREFS_NOTIFICATION_PERM_REQUEST_DATE:Ljava/lang/String; = "NotificationPermRequestDate"

.field public static final PREFS_SERVER_RESPONSE:Ljava/lang/String; = "ServerResponse"

.field public static final REFERRER_STATISTICS_STATUS_FEATURE_NOT_SUPPORTED_URL:Ljava/lang/String; = "?action=add&status=feature_not_supported"

.field public static final REFERRER_STATISTICS_STATUS_OK_URL:Ljava/lang/String; = "?action=add&status=ok"

.field public static final REFERRER_STATISTICS_STATUS_REMOTE_EXCEPTION:Ljava/lang/String; = "?action=add&status=remote_exception"

.field public static final REFERRER_STATISTICS_STATUS_UNAVAILABLE_URL:Ljava/lang/String; = "?action=add&status=unavailable"

.field public static final REFERRER_STATISTICS_URL:Ljava/lang/String; = "https://stat.appsgeyser.com/referrer.php"

.field public static final RMA_STATISTICS_URL:Ljava/lang/String; = "https://analytics.appsgeyser.com/hypo/rma_dialog_feedback.php?action=add"

.field public static final SMALL_BANNER_DEFAULT_REFRESH_RATE:I = 0xea60

.field public static final SMALL_BANNER_DEFAULT_REQUEST_RATE:I = 0xea60

.field public static final SPLASH_SERVER_DOMAIN_URL:Ljava/lang/String; = "https://splash.appsgeyser.com/"

.field public static final SSL_ERROR_DIALOG_BUTTON_NEGATIVE:Ljava/lang/String; = "Back to safety"

.field public static final SSL_ERROR_DIALOG_BUTTON_POSITIVE:Ljava/lang/String; = "Proceed anyway"

.field public static final SSL_ERROR_DIALOG_MESSAGE:Ljava/lang/String; = "The site\'s security certificate is not trusted!"

.field public static final SSL_ERROR_DIALOG_TITLE:Ljava/lang/String; = "SSL connection error!"

.field private static fullScreenDelay:J = -0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFullScreenDelay()J
    .locals 4

    .line 82
    sget-wide v0, Lcom/appsgeyser/sdk/configuration/Constants;->fullScreenDelay:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method public static setFullScreenDelay(J)V
    .locals 0

    .line 90
    sput-wide p0, Lcom/appsgeyser/sdk/configuration/Constants;->fullScreenDelay:J

    return-void
.end method
