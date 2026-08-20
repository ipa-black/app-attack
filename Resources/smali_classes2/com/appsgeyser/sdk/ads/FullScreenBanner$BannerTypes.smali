.class public final enum Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;
.super Ljava/lang/Enum;
.source "FullScreenBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/ads/FullScreenBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BannerTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

.field public static final enum HTML:Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

.field public static final enum NO_BANNER:Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

.field public static final enum PENDING_BANNER:Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

.field public static final enum SDK:Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;


# direct methods
.method private static synthetic $values()[Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;
    .locals 4

    .line 41
    sget-object v0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;->HTML:Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    sget-object v1, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;->NO_BANNER:Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    sget-object v2, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;->PENDING_BANNER:Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    sget-object v3, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;->SDK:Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    filled-new-array {v0, v1, v2, v3}, [Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    const-string v1, "HTML"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;->HTML:Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    .line 43
    new-instance v0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    const-string v1, "NO_BANNER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;->NO_BANNER:Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    .line 44
    new-instance v0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    const-string v1, "PENDING_BANNER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;->PENDING_BANNER:Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    .line 45
    new-instance v0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    const-string v1, "SDK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;->SDK:Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    .line 41
    invoke-static {}, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;->$values()[Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    move-result-object v0

    sput-object v0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;->$VALUES:[Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;
    .locals 1

    .line 41
    const-class v0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    return-object p0
.end method

.method public static values()[Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;
    .locals 1

    .line 41
    sget-object v0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;->$VALUES:[Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    invoke-virtual {v0}, [Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    return-object v0
.end method
