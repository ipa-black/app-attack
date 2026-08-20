.class public final Lcom/appodeal/ads/inapp/InAppPurchase$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/inapp/InAppPurchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0008\u0010\u0007\u001a\u00020\u0004H\u0007J\u0008\u0010\u0008\u001a\u00020\u0004H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/appodeal/ads/inapp/InAppPurchase$Companion;",
        "",
        "()V",
        "newBuilder",
        "Lcom/appodeal/ads/inapp/InAppPurchase$Builder;",
        "type",
        "Lcom/appodeal/ads/inapp/InAppPurchase$Type;",
        "newInAppBuilder",
        "newSubscriptionBuilder",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/inapp/InAppPurchase$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newBuilder(Lcom/appodeal/ads/inapp/InAppPurchase$Type;)Lcom/appodeal/ads/inapp/InAppPurchase$Builder;
    .locals 17
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "type"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;

    const/16 v15, 0xffe

    const/16 v16, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v16}, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;-><init>(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final newInAppBuilder()Lcom/appodeal/ads/inapp/InAppPurchase$Builder;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/appodeal/ads/inapp/InAppPurchase$Type;->InApp:Lcom/appodeal/ads/inapp/InAppPurchase$Type;

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/inapp/InAppPurchase$Companion;->newBuilder(Lcom/appodeal/ads/inapp/InAppPurchase$Type;)Lcom/appodeal/ads/inapp/InAppPurchase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newSubscriptionBuilder()Lcom/appodeal/ads/inapp/InAppPurchase$Builder;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/appodeal/ads/inapp/InAppPurchase$Type;->Subs:Lcom/appodeal/ads/inapp/InAppPurchase$Type;

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/inapp/InAppPurchase$Companion;->newBuilder(Lcom/appodeal/ads/inapp/InAppPurchase$Type;)Lcom/appodeal/ads/inapp/InAppPurchase$Builder;

    move-result-object v0

    return-object v0
.end method
