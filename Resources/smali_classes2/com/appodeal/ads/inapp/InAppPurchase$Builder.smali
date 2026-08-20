.class public final Lcom/appodeal/ads/inapp/InAppPurchase$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/inapp/InAppPurchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\t\n\u0000\n\u0002\u0010$\n\u0002\u0008\"\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B\u009b\u0001\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0014\u0008\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0011\u00a2\u0006\u0002\u0010\u0012J\u0006\u00103\u001a\u000204J\u001a\u00105\u001a\u00020\u00002\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0011J\u0010\u00106\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u00107\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005J\u0010\u00108\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005J\u0010\u00109\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010:\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010;\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u000e\u0010<\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010=\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005J\u0010\u0010>\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010?\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005R&\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0018\"\u0004\u0008\u001c\u0010\u001aR\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0018\"\u0004\u0008\u001e\u0010\u001aR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0018\"\u0004\u0008 \u0010\u001aR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u0018\"\u0004\u0008\"\u0010\u001aR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0018\"\u0004\u0008$\u0010\u001aR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010\u0018\"\u0004\u0008*\u0010\u001aR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u0018\"\u0004\u0008,\u0010\u001aR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010\u0018\"\u0004\u0008.\u0010\u001aR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102\u00a8\u0006@"
    }
    d2 = {
        "Lcom/appodeal/ads/inapp/InAppPurchase$Builder;",
        "",
        "type",
        "Lcom/appodeal/ads/inapp/InAppPurchase$Type;",
        "publicKey",
        "",
        "signature",
        "purchaseData",
        "developerPayload",
        "price",
        "currency",
        "sku",
        "orderId",
        "purchaseToken",
        "purchaseTimestamp",
        "",
        "additionalParameters",
        "",
        "(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V",
        "getAdditionalParameters",
        "()Ljava/util/Map;",
        "setAdditionalParameters",
        "(Ljava/util/Map;)V",
        "getCurrency",
        "()Ljava/lang/String;",
        "setCurrency",
        "(Ljava/lang/String;)V",
        "getDeveloperPayload",
        "setDeveloperPayload",
        "getOrderId",
        "setOrderId",
        "getPrice",
        "setPrice",
        "getPublicKey",
        "setPublicKey",
        "getPurchaseData",
        "setPurchaseData",
        "getPurchaseTimestamp",
        "()J",
        "setPurchaseTimestamp",
        "(J)V",
        "getPurchaseToken",
        "setPurchaseToken",
        "getSignature",
        "setSignature",
        "getSku",
        "setSku",
        "getType",
        "()Lcom/appodeal/ads/inapp/InAppPurchase$Type;",
        "setType",
        "(Lcom/appodeal/ads/inapp/InAppPurchase$Type;)V",
        "build",
        "Lcom/appodeal/ads/inapp/InAppPurchase;",
        "withAdditionalParams",
        "withCurrency",
        "withDeveloperPayload",
        "withOrderId",
        "withPrice",
        "withPublicKey",
        "withPurchaseData",
        "withPurchaseTimestamp",
        "withPurchaseToken",
        "withSignature",
        "withSku",
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


# instance fields
.field private additionalParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currency:Ljava/lang/String;

.field private developerPayload:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private publicKey:Ljava/lang/String;

.field private purchaseData:Ljava/lang/String;

.field private purchaseTimestamp:J

.field private purchaseToken:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private sku:Ljava/lang/String;

.field private type:Lcom/appodeal/ads/inapp/InAppPurchase$Type;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/inapp/InAppPurchase$Type;)V
    .locals 17

    const-string v0, "type"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v16}, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;-><init>(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;)V
    .locals 17

    const-string v0, "type"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v15, 0xffc

    const/16 v16, 0x0

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

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v16}, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;-><init>(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    const-string v0, "type"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v15, 0xff8

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v16}, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;-><init>(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    const-string v0, "type"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v15, 0xff0

    const/16 v16, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v16}, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;-><init>(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    const-string v0, "type"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v15, 0xfe0

    const/16 v16, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v16}, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;-><init>(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    const-string v0, "type"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v15, 0xfc0

    const/16 v16, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v16}, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;-><init>(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    const-string v0, "type"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v15, 0xf80

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v16}, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;-><init>(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    const-string v0, "type"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v15, 0xf00

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v16}, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;-><init>(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    const-string v0, "type"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v15, 0xe00

    const/16 v16, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v16}, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;-><init>(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    const-string v0, "type"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v15, 0xc00

    const/16 v16, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v16}, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;-><init>(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 17

    const-string v0, "type"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v15, 0x800

    const/16 v16, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-wide/from16 v12, p11

    invoke-direct/range {v1 .. v16}, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;-><init>(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/inapp/InAppPurchase$Type;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalParameters"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->type:Lcom/appodeal/ads/inapp/InAppPurchase$Type;

    iput-object p2, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->publicKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->signature:Ljava/lang/String;

    iput-object p4, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->purchaseData:Ljava/lang/String;

    iput-object p5, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->developerPayload:Ljava/lang/String;

    iput-object p6, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->price:Ljava/lang/String;

    iput-object p7, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->currency:Ljava/lang/String;

    iput-object p8, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->sku:Ljava/lang/String;

    iput-object p9, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->orderId:Ljava/lang/String;

    iput-object p10, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->purchaseToken:Ljava/lang/String;

    iput-wide p11, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->purchaseTimestamp:J

    iput-object p13, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->additionalParameters:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object/from16 v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_3

    move-object v5, v2

    goto :goto_3

    :cond_3
    move-object/from16 v5, p5

    :goto_3
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_4

    move-object v6, v2

    goto :goto_4

    :cond_4
    move-object/from16 v6, p6

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_5

    move-object v7, v2

    goto :goto_5

    :cond_5
    move-object/from16 v7, p7

    :goto_5
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_6

    move-object v8, v2

    goto :goto_6

    :cond_6
    move-object/from16 v8, p8

    :goto_6
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_7

    move-object v9, v2

    goto :goto_7

    :cond_7
    move-object/from16 v9, p9

    :goto_7
    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_8

    goto :goto_8

    :cond_8
    move-object/from16 v2, p10

    :goto_8
    and-int/lit16 v10, v0, 0x400

    if-eqz v10, :cond_9

    const-wide/16 v10, 0x0

    goto :goto_9

    :cond_9
    move-wide/from16 v10, p11

    :goto_9
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_a

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_a

    :cond_a
    move-object/from16 v0, p13

    :goto_a
    move-object p2, p0

    move-object p3, p1

    move-object/from16 p4, v1

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    move-object/from16 p7, v5

    move-object/from16 p8, v6

    move-object/from16 p9, v7

    move-object/from16 p10, v8

    move-object/from16 p11, v9

    move-object/from16 p12, v2

    move-wide/from16 p13, v10

    move-object/from16 p15, v0

    invoke-direct/range {p2 .. p15}, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;-><init>(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final build()Lcom/appodeal/ads/inapp/InAppPurchase;
    .locals 17

    move-object/from16 v0, p0

    new-instance v16, Lcom/appodeal/ads/inapp/InAppPurchase;

    iget-object v2, v0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->type:Lcom/appodeal/ads/inapp/InAppPurchase$Type;

    iget-object v3, v0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->publicKey:Ljava/lang/String;

    iget-object v4, v0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->signature:Ljava/lang/String;

    iget-object v5, v0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->purchaseData:Ljava/lang/String;

    iget-object v6, v0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->developerPayload:Ljava/lang/String;

    iget-object v7, v0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->price:Ljava/lang/String;

    iget-object v8, v0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->currency:Ljava/lang/String;

    iget-object v9, v0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->sku:Ljava/lang/String;

    iget-object v10, v0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->orderId:Ljava/lang/String;

    iget-object v11, v0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->purchaseToken:Ljava/lang/String;

    iget-wide v12, v0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->purchaseTimestamp:J

    iget-object v14, v0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->additionalParameters:Ljava/util/Map;

    const/4 v15, 0x0

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lcom/appodeal/ads/inapp/InAppPurchase;-><init>(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v16
.end method

.method public final getAdditionalParameters()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->additionalParameters:Ljava/util/Map;

    return-object v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeveloperPayload()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->developerPayload:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->price:Ljava/lang/String;

    return-object v0
.end method

.method public final getPublicKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->publicKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getPurchaseData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->purchaseData:Ljava/lang/String;

    return-object v0
.end method

.method public final getPurchaseTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->purchaseTimestamp:J

    return-wide v0
.end method

.method public final getPurchaseToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->purchaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public final getSku()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/appodeal/ads/inapp/InAppPurchase$Type;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->type:Lcom/appodeal/ads/inapp/InAppPurchase$Type;

    return-object v0
.end method

.method public final setAdditionalParameters(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->additionalParameters:Ljava/util/Map;

    return-void
.end method

.method public final setCurrency(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->currency:Ljava/lang/String;

    return-void
.end method

.method public final setDeveloperPayload(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->developerPayload:Ljava/lang/String;

    return-void
.end method

.method public final setOrderId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->orderId:Ljava/lang/String;

    return-void
.end method

.method public final setPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->price:Ljava/lang/String;

    return-void
.end method

.method public final setPublicKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->publicKey:Ljava/lang/String;

    return-void
.end method

.method public final setPurchaseData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->purchaseData:Ljava/lang/String;

    return-void
.end method

.method public final setPurchaseTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->purchaseTimestamp:J

    return-void
.end method

.method public final setPurchaseToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->purchaseToken:Ljava/lang/String;

    return-void
.end method

.method public final setSignature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->signature:Ljava/lang/String;

    return-void
.end method

.method public final setSku(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->sku:Ljava/lang/String;

    return-void
.end method

.method public final setType(Lcom/appodeal/ads/inapp/InAppPurchase$Type;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->type:Lcom/appodeal/ads/inapp/InAppPurchase$Type;

    return-void
.end method

.method public final withAdditionalParams(Ljava/util/Map;)Lcom/appodeal/ads/inapp/InAppPurchase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/appodeal/ads/inapp/InAppPurchase$Builder;"
        }
    .end annotation

    const-string v0, "additionalParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->setAdditionalParameters(Ljava/util/Map;)V

    return-object p0
.end method

.method public final withCurrency(Ljava/lang/String;)Lcom/appodeal/ads/inapp/InAppPurchase$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->setCurrency(Ljava/lang/String;)V

    return-object p0
.end method

.method public final withDeveloperPayload(Ljava/lang/String;)Lcom/appodeal/ads/inapp/InAppPurchase$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->setDeveloperPayload(Ljava/lang/String;)V

    return-object p0
.end method

.method public final withOrderId(Ljava/lang/String;)Lcom/appodeal/ads/inapp/InAppPurchase$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->setOrderId(Ljava/lang/String;)V

    return-object p0
.end method

.method public final withPrice(Ljava/lang/String;)Lcom/appodeal/ads/inapp/InAppPurchase$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->setPrice(Ljava/lang/String;)V

    return-object p0
.end method

.method public final withPublicKey(Ljava/lang/String;)Lcom/appodeal/ads/inapp/InAppPurchase$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->setPublicKey(Ljava/lang/String;)V

    return-object p0
.end method

.method public final withPurchaseData(Ljava/lang/String;)Lcom/appodeal/ads/inapp/InAppPurchase$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->setPurchaseData(Ljava/lang/String;)V

    return-object p0
.end method

.method public final withPurchaseTimestamp(J)Lcom/appodeal/ads/inapp/InAppPurchase$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->setPurchaseTimestamp(J)V

    return-object p0
.end method

.method public final withPurchaseToken(Ljava/lang/String;)Lcom/appodeal/ads/inapp/InAppPurchase$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->setPurchaseToken(Ljava/lang/String;)V

    return-object p0
.end method

.method public final withSignature(Ljava/lang/String;)Lcom/appodeal/ads/inapp/InAppPurchase$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->setSignature(Ljava/lang/String;)V

    return-object p0
.end method

.method public final withSku(Ljava/lang/String;)Lcom/appodeal/ads/inapp/InAppPurchase$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/inapp/InAppPurchase$Builder;->setSku(Ljava/lang/String;)V

    return-object p0
.end method
