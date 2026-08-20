.class public Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;
.super Ljava/lang/Object;
.source "ConfigPhp.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aboutScreenDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "about_screen_description"
    .end annotation
.end field

.field private aboutScreenDescriptionType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "about_screen_description_type"
    .end annotation
.end field

.field private activeAdsSDK:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

.field private additionalJsCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "additional_js_code"
    .end annotation
.end field

.field private adsNetworkSdk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;",
            ">;"
        }
    .end annotation
.end field

.field private appBanActive:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_ban_active"
    .end annotation
.end field

.field private appsgeyserAccess:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appsgeyserAuth"
    .end annotation
.end field

.field private appsgeyserDisableAds:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appsgeyserDisableAds"
    .end annotation
.end field

.field private appsgeyserSdk:Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;

.field private countOfTry:I

.field private country:Ljava/lang/String;

.field private customAboutActive:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "custom_html_about_active"
    .end annotation
.end field

.field private eulaBeginning:Ljava/lang/String;

.field private firebaseActive:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "firebaseActive"
    .end annotation
.end field

.field private firebaseApiKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "firebaseApiKey"
    .end annotation
.end field

.field private firebaseApplicationId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "firebaseApplicationId"
    .end annotation
.end field

.field private firebaseDataBaseUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "firebaseDataBaseUrl"
    .end annotation
.end field

.field private firebaseStorageBucket:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "firebaseStorageBucket"
    .end annotation
.end field

.field private fullScreenDelay:J

.field private fullscreenBannerCountToShow:I

.field private fullscreenSdk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;",
            ">;"
        }
    .end annotation
.end field

.field private inAppPurchasesActive:Z

.field private inactivityDaysPeriod:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "period_days"
    .end annotation
.end field

.field private inactivityReminderEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "turn_on_inactivity_reminder"
    .end annotation
.end field

.field private inactivityReminderText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "text_reminder"
    .end annotation
.end field

.field private isAboutScreenEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enable_about_screen"
    .end annotation
.end field

.field private isAdvertisingTermsDialog:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "startup_confirmation_dialog"
    .end annotation
.end field

.field private isInappUpdateEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isInappUpdateEnabled"
    .end annotation
.end field

.field private isOnResumeFSEnabled:Z

.field private isOnTouchFSEnabled:Z

.field private isTakeOffFSEnabled:Z

.field private oneSignalAppId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "oneSignalAppId"
    .end annotation
.end field

.field private pushNotificationsActive:Z

.field private rateMyAppActive:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rateMyAppActive"
    .end annotation
.end field

.field private rewardedVideoSdk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;",
            ">;"
        }
    .end annotation
.end field

.field private startupELUAConfirmationDialogAllow:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "startup_dialog_allowing_use_if_decline"
    .end annotation
.end field

.field private statUrls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    new-instance v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp$1;

    invoke-direct {v0}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp$1;-><init>()V

    sput-object v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isAboutScreenEnabled:Z

    .line 30
    const-string v1, "default"

    iput-object v1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->aboutScreenDescriptionType:Ljava/lang/String;

    .line 34
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->startupELUAConfirmationDialogAllow:Z

    const/4 v1, 0x0

    .line 65
    iput-boolean v1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isTakeOffFSEnabled:Z

    .line 66
    iput-boolean v1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isOnResumeFSEnabled:Z

    .line 67
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isOnTouchFSEnabled:Z

    const-wide/16 v1, -0x1

    .line 76
    iput-wide v1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->fullScreenDelay:J

    .line 79
    iput v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->fullscreenBannerCountToShow:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isAboutScreenEnabled:Z

    .line 30
    const-string v1, "default"

    iput-object v1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->aboutScreenDescriptionType:Ljava/lang/String;

    .line 34
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->startupELUAConfirmationDialogAllow:Z

    const/4 v1, 0x0

    .line 65
    iput-boolean v1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isTakeOffFSEnabled:Z

    .line 66
    iput-boolean v1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isOnResumeFSEnabled:Z

    .line 67
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isOnTouchFSEnabled:Z

    const-wide/16 v2, -0x1

    .line 76
    iput-wide v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->fullScreenDelay:J

    .line 79
    iput v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->fullscreenBannerCountToShow:I

    .line 101
    const-class v2, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;

    iput-object v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->appsgeyserSdk:Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isAboutScreenEnabled:Z

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isAdvertisingTermsDialog:Z

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->country:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->eulaBeginning:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    iput-boolean v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->pushNotificationsActive:Z

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->countOfTry:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->aboutScreenDescriptionType:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->aboutScreenDescription:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    iput-boolean v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->startupELUAConfirmationDialogAllow:Z

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    iput-boolean v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->rateMyAppActive:Z

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_5

    move v2, v0

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    iput-boolean v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->customAboutActive:Z

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_6

    move v2, v0

    goto :goto_6

    :cond_6
    move v2, v1

    :goto_6
    iput-boolean v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->appBanActive:Z

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_7

    move v2, v0

    goto :goto_7

    :cond_7
    move v2, v1

    :goto_7
    iput-boolean v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->inAppPurchasesActive:Z

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->additionalJsCode:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_8

    move v2, v0

    goto :goto_8

    :cond_8
    move v2, v1

    :goto_8
    iput-boolean v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->inactivityReminderEnabled:Z

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->inactivityDaysPeriod:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->inactivityReminderText:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->oneSignalAppId:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->appsgeyserAccess:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->appsgeyserDisableAds:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_9

    move v2, v0

    goto :goto_9

    :cond_9
    move v2, v1

    :goto_9
    iput-boolean v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isInappUpdateEnabled:Z

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_a

    :cond_a
    move v0, v1

    :goto_a
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->firebaseActive:Z

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->firebaseApplicationId:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->firebaseApiKey:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->firebaseDataBaseUrl:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->firebaseStorageBucket:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;Ljava/lang/String;Ljava/lang/String;ZILjava/util/Map;ZZLcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZ",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 65
    iput-boolean v1, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isTakeOffFSEnabled:Z

    .line 66
    iput-boolean v1, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isOnResumeFSEnabled:Z

    const/4 v1, 0x1

    .line 67
    iput-boolean v1, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isOnTouchFSEnabled:Z

    const-wide/16 v2, -0x1

    .line 76
    iput-wide v2, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->fullScreenDelay:J

    .line 79
    iput v1, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->fullscreenBannerCountToShow:I

    move-object v1, p1

    .line 182
    iput-object v1, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->appsgeyserSdk:Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;

    move-object v1, p2

    .line 183
    iput-object v1, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->country:Ljava/lang/String;

    move-object v1, p3

    .line 184
    iput-object v1, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->eulaBeginning:Ljava/lang/String;

    move v1, p4

    .line 185
    iput-boolean v1, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->pushNotificationsActive:Z

    move v1, p5

    .line 186
    iput v1, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->countOfTry:I

    move-object v1, p6

    .line 187
    iput-object v1, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->statUrls:Ljava/util/Map;

    move v1, p7

    .line 188
    iput-boolean v1, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isAboutScreenEnabled:Z

    move v1, p8

    .line 189
    iput-boolean v1, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isAdvertisingTermsDialog:Z

    move-object v1, p9

    .line 190
    iput-object v1, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->activeAdsSDK:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    move-object v1, p10

    .line 191
    iput-object v1, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->aboutScreenDescription:Ljava/lang/String;

    move-object v1, p11

    .line 192
    iput-object v1, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->aboutScreenDescriptionType:Ljava/lang/String;

    move/from16 v1, p12

    .line 193
    iput-boolean v1, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->startupELUAConfirmationDialogAllow:Z

    move/from16 v1, p13

    .line 194
    iput-boolean v1, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->rateMyAppActive:Z

    move/from16 v1, p14

    .line 195
    iput-boolean v1, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->customAboutActive:Z

    move/from16 v1, p15

    .line 196
    iput-boolean v1, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->appBanActive:Z

    move/from16 v1, p16

    .line 197
    iput-boolean v1, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->inAppPurchasesActive:Z

    move-object/from16 v1, p17

    .line 198
    iput-object v1, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->additionalJsCode:Ljava/lang/String;

    move/from16 v1, p18

    .line 199
    iput-boolean v1, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->inactivityReminderEnabled:Z

    move/from16 v1, p19

    .line 200
    iput v1, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->inactivityDaysPeriod:I

    move-object/from16 v1, p20

    .line 201
    iput-object v1, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->inactivityReminderText:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 202
    iput-object v1, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->oneSignalAppId:Ljava/lang/String;

    move-object/from16 v1, p22

    .line 203
    iput-object v1, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->appsgeyserAccess:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 204
    iput-object v1, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->appsgeyserDisableAds:Ljava/lang/String;

    move/from16 v1, p24

    .line 205
    iput-boolean v1, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isInappUpdateEnabled:Z

    move/from16 v1, p25

    .line 206
    iput-boolean v1, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->firebaseActive:Z

    move-object/from16 v1, p26

    .line 207
    iput-object v1, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->firebaseApplicationId:Ljava/lang/String;

    move-object/from16 v1, p27

    .line 208
    iput-object v1, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->firebaseApiKey:Ljava/lang/String;

    move-object/from16 v1, p28

    .line 209
    iput-object v1, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->firebaseDataBaseUrl:Ljava/lang/String;

    move-object/from16 v1, p29

    .line 210
    iput-object v1, v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->firebaseStorageBucket:Ljava/lang/String;

    return-void
.end method

.method public static parseFromJson(Ljava/lang/String;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .line 143
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setLenient()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 145
    new-instance v1, Lcom/google/gson/stream/JsonReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    const/4 p0, 0x1

    .line 146
    invoke-virtual {v1, p0}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 148
    const-class p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAboutScreenDescription()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->aboutScreenDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getAboutScreenDescriptionType()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->aboutScreenDescriptionType:Ljava/lang/String;

    return-object v0
.end method

.method public getActiveAdsSDK()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->activeAdsSDK:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    return-object v0
.end method

.method public getAdditionalJsCode()Ljava/lang/String;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->additionalJsCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAdsNetworkSdk()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;",
            ">;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->adsNetworkSdk:Ljava/util/Map;

    return-object v0
.end method

.method public getAppsgeyserAccess()Ljava/lang/String;
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->appsgeyserAccess:Ljava/lang/String;

    return-object v0
.end method

.method public getAppsgeyserDisableAds()Ljava/lang/String;
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->appsgeyserDisableAds:Ljava/lang/String;

    return-object v0
.end method

.method public getAppsgeyserSdk()Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->appsgeyserSdk:Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;

    return-object v0
.end method

.method public getCountOfTry()I
    .locals 1

    .line 253
    iget v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->countOfTry:I

    return v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getEulaBeginning()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->eulaBeginning:Ljava/lang/String;

    return-object v0
.end method

.method public getFirebaseApiKey()Ljava/lang/String;
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->firebaseApiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getFirebaseApplicationId()Ljava/lang/String;
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->firebaseApplicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getFirebaseDataBaseUrl()Ljava/lang/String;
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->firebaseDataBaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFirebaseStorageBucket()Ljava/lang/String;
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->firebaseStorageBucket:Ljava/lang/String;

    return-object v0
.end method

.method public getFullScreenDelay()J
    .locals 2

    .line 387
    iget-wide v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->fullScreenDelay:J

    return-wide v0
.end method

.method public getFullscreenBannerCountToShow()I
    .locals 1

    .line 411
    iget v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->fullscreenBannerCountToShow:I

    return v0
.end method

.method public getFullscreenSdk()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;",
            ">;"
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->fullscreenSdk:Ljava/util/Map;

    return-object v0
.end method

.method public getInactivityDaysPeriod()I
    .locals 1

    .line 455
    iget v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->inactivityDaysPeriod:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getInactivityReminderText()Ljava/lang/String;
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->inactivityReminderText:Ljava/lang/String;

    return-object v0
.end method

.method public getOneSignalAppId()Ljava/lang/String;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->oneSignalAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardedVideoSdk()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;",
            ">;"
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->rewardedVideoSdk:Ljava/util/Map;

    return-object v0
.end method

.method public getStartupELUAConfirmationDialogAllow()Z
    .locals 1

    .line 229
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->startupELUAConfirmationDialogAllow:Z

    return v0
.end method

.method public getStatUrls()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->statUrls:Ljava/util/Map;

    return-object v0
.end method

.method public isAboutScreenEnabled()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isAboutScreenEnabled:Z

    return v0
.end method

.method public isAdvertisingTermsDialog()Z
    .locals 1

    .line 285
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isAdvertisingTermsDialog:Z

    return v0
.end method

.method public isAppBanActive()Z
    .locals 1

    .line 301
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->appBanActive:Z

    return v0
.end method

.method public isCustomAboutActive()Z
    .locals 1

    .line 431
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->customAboutActive:Z

    return v0
.end method

.method public isFirebaseActive()Z
    .locals 1

    .line 504
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->firebaseActive:Z

    return v0
.end method

.method public isInAppPurchasesActive()Z
    .locals 1

    .line 293
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->inAppPurchasesActive:Z

    return v0
.end method

.method public isInactivityReminderEnabled()Z
    .locals 1

    .line 447
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->inactivityReminderEnabled:Z

    return v0
.end method

.method public isInappUpdateEnabled()Z
    .locals 1

    .line 496
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isInappUpdateEnabled:Z

    return v0
.end method

.method public isOfferWallEnabled()Z
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->adsNetworkSdk:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->adsNetworkSdk:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    .line 356
    invoke-virtual {v1}, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOnResumeFSEnabled()Z
    .locals 1

    .line 403
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isOnResumeFSEnabled:Z

    return v0
.end method

.method public isOnTouchFSEnabled()Z
    .locals 1

    .line 407
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isOnTouchFSEnabled:Z

    return v0
.end method

.method public isPushNotificationsActive()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->pushNotificationsActive:Z

    return v0
.end method

.method public isRateMyAppActive()Z
    .locals 1

    .line 423
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->rateMyAppActive:Z

    return v0
.end method

.method public isRewardedVideoEnabled()Z
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->rewardedVideoSdk:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->rewardedVideoSdk:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    .line 369
    invoke-virtual {v1}, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTakeOffFSEnabled()Z
    .locals 1

    .line 399
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isTakeOffFSEnabled:Z

    return v0
.end method

.method public setAboutScreenEnabled(Z)V
    .locals 0

    .line 273
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isAboutScreenEnabled:Z

    return-void
.end method

.method public setAdditionalJsCode(Ljava/lang/String;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->additionalJsCode:Ljava/lang/String;

    return-void
.end method

.method public setAdsNetworkSdk(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;",
            ">;)V"
        }
    .end annotation

    .line 349
    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->adsNetworkSdk:Ljava/util/Map;

    return-void
.end method

.method public setAdvertisingTermsDialog(Z)V
    .locals 0

    .line 289
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isAdvertisingTermsDialog:Z

    return-void
.end method

.method public setAppBanActive(Z)V
    .locals 0

    .line 305
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->appBanActive:Z

    return-void
.end method

.method public setAppsgeyserAccess(Ljava/lang/String;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->appsgeyserAccess:Ljava/lang/String;

    return-void
.end method

.method public setAppsgeyserDisableAds(Ljava/lang/String;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->appsgeyserDisableAds:Ljava/lang/String;

    return-void
.end method

.method public setAppsgeyserSdk(Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->appsgeyserSdk:Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;

    return-void
.end method

.method public setCountOfTry(I)V
    .locals 0

    .line 257
    iput p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->countOfTry:I

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->country:Ljava/lang/String;

    return-void
.end method

.method public setCustomAboutActive(Z)V
    .locals 0

    .line 435
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->customAboutActive:Z

    return-void
.end method

.method public setEulaBeginning(Ljava/lang/String;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->eulaBeginning:Ljava/lang/String;

    return-void
.end method

.method public setFirebaseActive(Z)V
    .locals 0

    .line 508
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->firebaseActive:Z

    return-void
.end method

.method public setFirebaseApiKey(Ljava/lang/String;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->firebaseApiKey:Ljava/lang/String;

    return-void
.end method

.method public setFirebaseApplicationId(Ljava/lang/String;)V
    .locals 0

    .line 516
    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->firebaseApplicationId:Ljava/lang/String;

    return-void
.end method

.method public setFirebaseDataBaseUrl(Ljava/lang/String;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->firebaseDataBaseUrl:Ljava/lang/String;

    return-void
.end method

.method public setFirebaseStorageBucket(Ljava/lang/String;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->firebaseStorageBucket:Ljava/lang/String;

    return-void
.end method

.method public setFullScreenDelay(J)V
    .locals 0

    .line 391
    iput-wide p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->fullScreenDelay:J

    return-void
.end method

.method public setFullscreenBannerCountToShow(I)V
    .locals 0

    .line 415
    iput p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->fullscreenBannerCountToShow:I

    return-void
.end method

.method public setInAppPurchasesActive(Z)V
    .locals 0

    .line 297
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->inAppPurchasesActive:Z

    return-void
.end method

.method public setInactivityDaysPeriod(I)V
    .locals 0

    .line 459
    iput p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->inactivityDaysPeriod:I

    return-void
.end method

.method public setInactivityReminderEnabled(Z)V
    .locals 0

    .line 451
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->inactivityReminderEnabled:Z

    return-void
.end method

.method public setInactivityReminderText(Ljava/lang/String;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->inactivityReminderText:Ljava/lang/String;

    return-void
.end method

.method public setInappUpdateEnabled(Z)V
    .locals 0

    .line 500
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isInappUpdateEnabled:Z

    return-void
.end method

.method public setOneSignalAppId(Ljava/lang/String;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->oneSignalAppId:Ljava/lang/String;

    return-void
.end method

.method public setPushNotificationsActive(Z)V
    .locals 0

    .line 281
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->pushNotificationsActive:Z

    return-void
.end method

.method public setRateMyAppActive(Z)V
    .locals 0

    .line 427
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->rateMyAppActive:Z

    return-void
.end method

.method public setRewardedVideoSdk(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;",
            ">;)V"
        }
    .end annotation

    .line 383
    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->rewardedVideoSdk:Ljava/util/Map;

    return-void
.end method

.method public setStatUrls(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 265
    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->statUrls:Ljava/util/Map;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->appsgeyserSdk:Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 316
    iget-boolean p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isAboutScreenEnabled:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 317
    iget-boolean p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isAdvertisingTermsDialog:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 318
    iget-object p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->country:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 319
    iget-object p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->eulaBeginning:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    iget-boolean p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->pushNotificationsActive:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 321
    iget p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->countOfTry:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget-object p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->aboutScreenDescriptionType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 323
    iget-object p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->aboutScreenDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    iget-boolean p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->startupELUAConfirmationDialogAllow:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 325
    iget-boolean p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->rateMyAppActive:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 326
    iget-boolean p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->customAboutActive:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 327
    iget-boolean p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->appBanActive:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 328
    iget-boolean p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->inAppPurchasesActive:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 329
    iget-object p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->additionalJsCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    iget-boolean p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->inactivityReminderEnabled:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 331
    iget p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->inactivityDaysPeriod:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget-object p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->inactivityReminderText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    iget-object p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->oneSignalAppId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    iget-object p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->appsgeyserAccess:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    iget-object p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->appsgeyserDisableAds:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 336
    iget-boolean p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isInappUpdateEnabled:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 337
    iget-boolean p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->firebaseActive:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 338
    iget-object p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->firebaseApplicationId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 339
    iget-object p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->firebaseApiKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    iget-object p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->firebaseDataBaseUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    iget-object p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->firebaseStorageBucket:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
