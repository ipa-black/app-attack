.class public Lcom/appsgeyser/sdk/inapp/utils/DisableAdsSharedPrefs;
.super Ljava/lang/Object;
.source "DisableAdsSharedPrefs.java"


# static fields
.field private static instance:Lcom/appsgeyser/sdk/inapp/utils/DisableAdsSharedPrefs;


# instance fields
.field private final DISABLE_ADS_KEY:Ljava/lang/String;

.field private final DISABLE_ADS_NAME:Ljava/lang/String;

.field private sharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, "DISABLE_ADS_NAME"

    iput-object v0, p0, Lcom/appsgeyser/sdk/inapp/utils/DisableAdsSharedPrefs;->DISABLE_ADS_NAME:Ljava/lang/String;

    .line 9
    const-string v0, "disable_ads_key"

    iput-object v0, p0, Lcom/appsgeyser/sdk/inapp/utils/DisableAdsSharedPrefs;->DISABLE_ADS_KEY:Ljava/lang/String;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/appsgeyser/sdk/inapp/utils/DisableAdsSharedPrefs;->sharedPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static getInstance()Lcom/appsgeyser/sdk/inapp/utils/DisableAdsSharedPrefs;
    .locals 1

    .line 20
    sget-object v0, Lcom/appsgeyser/sdk/inapp/utils/DisableAdsSharedPrefs;->instance:Lcom/appsgeyser/sdk/inapp/utils/DisableAdsSharedPrefs;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/appsgeyser/sdk/inapp/utils/DisableAdsSharedPrefs;

    invoke-direct {v0}, Lcom/appsgeyser/sdk/inapp/utils/DisableAdsSharedPrefs;-><init>()V

    sput-object v0, Lcom/appsgeyser/sdk/inapp/utils/DisableAdsSharedPrefs;->instance:Lcom/appsgeyser/sdk/inapp/utils/DisableAdsSharedPrefs;

    .line 23
    :cond_0
    sget-object v0, Lcom/appsgeyser/sdk/inapp/utils/DisableAdsSharedPrefs;->instance:Lcom/appsgeyser/sdk/inapp/utils/DisableAdsSharedPrefs;

    return-object v0
.end method


# virtual methods
.method public getDisableAdsActiveFlag()Z
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/utils/DisableAdsSharedPrefs;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "disable_ads_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 16
    const-string v0, "DISABLE_ADS_NAME"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/utils/DisableAdsSharedPrefs;->sharedPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method public saveDisableAdsPurchaseFlag(Z)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/utils/DisableAdsSharedPrefs;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "disable_ads_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
