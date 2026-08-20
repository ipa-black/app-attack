.class public final Lcom/appodeal/ads/m5;
.super Lcom/appodeal/ads/j4;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;


# static fields
.field public static final c:Lcom/appodeal/ads/m5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/m5;

    invoke-direct {v0}, Lcom/appodeal/ads/m5;-><init>()V

    sput-object v0, Lcom/appodeal/ads/m5;->c:Lcom/appodeal/ads/m5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/j4;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCachedToken()Lorg/json/JSONObject;
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/x2;->f()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final getExtraData()Lorg/json/JSONObject;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/ExtraData;->INSTANCE:Lcom/appodeal/ads/ExtraData;

    invoke-virtual {v0}, Lcom/appodeal/ads/ExtraData;->asJson()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final wasAdIdGenerated()Z
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/x2;->h()Z

    move-result v0

    return v0
.end method
