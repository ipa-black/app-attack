.class public final Lcom/appodeal/ads/inapp/InAppPurchase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/inapp/InAppPurchase$Type;,
        Lcom/appodeal/ads/inapp/InAppPurchase$Builder;,
        Lcom/appodeal/ads/inapp/InAppPurchase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\t\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0016\u0018\u0000 %2\u00020\u0001:\u0003$%&B\u0089\u0001\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0014\u0008\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0011\u00a2\u0006\u0002\u0010\u0012J\u0008\u0010#\u001a\u00020\u0005H\u0016R\u001d\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0016R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0016R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0016R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0016R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0013\u0010\r\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0016R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0016R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/appodeal/ads/inapp/InAppPurchase;",
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
        "getCurrency",
        "()Ljava/lang/String;",
        "getDeveloperPayload",
        "getOrderId",
        "getPrice",
        "getPublicKey",
        "getPurchaseData",
        "getPurchaseTimestamp",
        "()J",
        "getPurchaseToken",
        "getSignature",
        "getSku",
        "getType",
        "()Lcom/appodeal/ads/inapp/InAppPurchase$Type;",
        "toString",
        "Builder",
        "Companion",
        "Type",
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
.field public static final Companion:Lcom/appodeal/ads/inapp/InAppPurchase$Companion;


# instance fields
.field private final additionalParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final currency:Ljava/lang/String;

.field private final developerPayload:Ljava/lang/String;

.field private final orderId:Ljava/lang/String;

.field private final price:Ljava/lang/String;

.field private final publicKey:Ljava/lang/String;

.field private final purchaseData:Ljava/lang/String;

.field private final purchaseTimestamp:J

.field private final purchaseToken:Ljava/lang/String;

.field private final signature:Ljava/lang/String;

.field private final sku:Ljava/lang/String;

.field private final type:Lcom/appodeal/ads/inapp/InAppPurchase$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/appodeal/ads/inapp/InAppPurchase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appodeal/ads/inapp/InAppPurchase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/appodeal/ads/inapp/InAppPurchase;->Companion:Lcom/appodeal/ads/inapp/InAppPurchase$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 0
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/inapp/InAppPurchase;->type:Lcom/appodeal/ads/inapp/InAppPurchase$Type;

    iput-object p2, p0, Lcom/appodeal/ads/inapp/InAppPurchase;->publicKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/appodeal/ads/inapp/InAppPurchase;->signature:Ljava/lang/String;

    iput-object p4, p0, Lcom/appodeal/ads/inapp/InAppPurchase;->purchaseData:Ljava/lang/String;

    iput-object p5, p0, Lcom/appodeal/ads/inapp/InAppPurchase;->developerPayload:Ljava/lang/String;

    iput-object p6, p0, Lcom/appodeal/ads/inapp/InAppPurchase;->price:Ljava/lang/String;

    iput-object p7, p0, Lcom/appodeal/ads/inapp/InAppPurchase;->currency:Ljava/lang/String;

    iput-object p8, p0, Lcom/appodeal/ads/inapp/InAppPurchase;->sku:Ljava/lang/String;

    iput-object p9, p0, Lcom/appodeal/ads/inapp/InAppPurchase;->orderId:Ljava/lang/String;

    iput-object p10, p0, Lcom/appodeal/ads/inapp/InAppPurchase;->purchaseToken:Ljava/lang/String;

    iput-wide p11, p0, Lcom/appodeal/ads/inapp/InAppPurchase;->purchaseTimestamp:J

    iput-object p13, p0, Lcom/appodeal/ads/inapp/InAppPurchase;->additionalParameters:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    move/from16 v0, p14

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    move-wide v14, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v14, p11

    :goto_0
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_1

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_1

    :cond_1
    move-object/from16 v16, p13

    :goto_1
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-direct/range {v3 .. v16}, Lcom/appodeal/ads/inapp/InAppPurchase;-><init>(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Lcom/appodeal/ads/inapp/InAppPurchase;-><init>(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method public static final newBuilder(Lcom/appodeal/ads/inapp/InAppPurchase$Type;)Lcom/appodeal/ads/inapp/InAppPurchase$Builder;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/appodeal/ads/inapp/InAppPurchase;->Companion:Lcom/appodeal/ads/inapp/InAppPurchase$Companion;

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/inapp/InAppPurchase$Companion;->newBuilder(Lcom/appodeal/ads/inapp/InAppPurchase$Type;)Lcom/appodeal/ads/inapp/InAppPurchase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final newInAppBuilder()Lcom/appodeal/ads/inapp/InAppPurchase$Builder;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/appodeal/ads/inapp/InAppPurchase;->Companion:Lcom/appodeal/ads/inapp/InAppPurchase$Companion;

    invoke-virtual {v0}, Lcom/appodeal/ads/inapp/InAppPurchase$Companion;->newInAppBuilder()Lcom/appodeal/ads/inapp/InAppPurchase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static final newSubscriptionBuilder()Lcom/appodeal/ads/inapp/InAppPurchase$Builder;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/appodeal/ads/inapp/InAppPurchase;->Companion:Lcom/appodeal/ads/inapp/InAppPurchase$Companion;

    invoke-virtual {v0}, Lcom/appodeal/ads/inapp/InAppPurchase$Companion;->newSubscriptionBuilder()Lcom/appodeal/ads/inapp/InAppPurchase$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
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

    iget-object v0, p0, Lcom/appodeal/ads/inapp/InAppPurchase;->additionalParameters:Ljava/util/Map;

    return-object v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/inapp/InAppPurchase;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeveloperPayload()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/inapp/InAppPurchase;->developerPayload:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/inapp/InAppPurchase;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/inapp/InAppPurchase;->price:Ljava/lang/String;

    return-object v0
.end method

.method public final getPublicKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/inapp/InAppPurchase;->publicKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getPurchaseData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/inapp/InAppPurchase;->purchaseData:Ljava/lang/String;

    return-object v0
.end method

.method public final getPurchaseTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/appodeal/ads/inapp/InAppPurchase;->purchaseTimestamp:J

    return-wide v0
.end method

.method public final getPurchaseToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/inapp/InAppPurchase;->purchaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/inapp/InAppPurchase;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public final getSku()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/inapp/InAppPurchase;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/appodeal/ads/inapp/InAppPurchase$Type;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/inapp/InAppPurchase;->type:Lcom/appodeal/ads/inapp/InAppPurchase$Type;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "price=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appodeal/ads/inapp/InAppPurchase;->price:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', currency=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/inapp/InAppPurchase;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
