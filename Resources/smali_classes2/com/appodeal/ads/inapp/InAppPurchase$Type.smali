.class public final enum Lcom/appodeal/ads/inapp/InAppPurchase$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/inapp/InAppPurchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appodeal/ads/inapp/InAppPurchase$Type;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/appodeal/ads/inapp/InAppPurchase$Type;",
        "",
        "(Ljava/lang/String;I)V",
        "InApp",
        "Subs",
        "apd_public"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appodeal/ads/inapp/InAppPurchase$Type;

.field public static final enum InApp:Lcom/appodeal/ads/inapp/InAppPurchase$Type;

.field public static final enum Subs:Lcom/appodeal/ads/inapp/InAppPurchase$Type;


# direct methods
.method private static final synthetic $values()[Lcom/appodeal/ads/inapp/InAppPurchase$Type;
    .locals 2

    sget-object v0, Lcom/appodeal/ads/inapp/InAppPurchase$Type;->InApp:Lcom/appodeal/ads/inapp/InAppPurchase$Type;

    sget-object v1, Lcom/appodeal/ads/inapp/InAppPurchase$Type;->Subs:Lcom/appodeal/ads/inapp/InAppPurchase$Type;

    filled-new-array {v0, v1}, [Lcom/appodeal/ads/inapp/InAppPurchase$Type;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/appodeal/ads/inapp/InAppPurchase$Type;

    const-string v1, "InApp"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appodeal/ads/inapp/InAppPurchase$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appodeal/ads/inapp/InAppPurchase$Type;->InApp:Lcom/appodeal/ads/inapp/InAppPurchase$Type;

    new-instance v0, Lcom/appodeal/ads/inapp/InAppPurchase$Type;

    const-string v1, "Subs"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/appodeal/ads/inapp/InAppPurchase$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appodeal/ads/inapp/InAppPurchase$Type;->Subs:Lcom/appodeal/ads/inapp/InAppPurchase$Type;

    invoke-static {}, Lcom/appodeal/ads/inapp/InAppPurchase$Type;->$values()[Lcom/appodeal/ads/inapp/InAppPurchase$Type;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/inapp/InAppPurchase$Type;->$VALUES:[Lcom/appodeal/ads/inapp/InAppPurchase$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appodeal/ads/inapp/InAppPurchase$Type;
    .locals 1

    const-class v0, Lcom/appodeal/ads/inapp/InAppPurchase$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/inapp/InAppPurchase$Type;

    return-object p0
.end method

.method public static values()[Lcom/appodeal/ads/inapp/InAppPurchase$Type;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/inapp/InAppPurchase$Type;->$VALUES:[Lcom/appodeal/ads/inapp/InAppPurchase$Type;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appodeal/ads/inapp/InAppPurchase$Type;

    return-object v0
.end method
