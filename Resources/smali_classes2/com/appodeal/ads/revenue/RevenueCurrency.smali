.class public final enum Lcom/appodeal/ads/revenue/RevenueCurrency;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/revenue/RevenueCurrency$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appodeal/ads/revenue/RevenueCurrency;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/appodeal/ads/revenue/RevenueCurrency;",
        "",
        "stringValue",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getStringValue",
        "()Ljava/lang/String;",
        "asCurrency",
        "Ljava/util/Currency;",
        "USD",
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
.field private static final synthetic $VALUES:[Lcom/appodeal/ads/revenue/RevenueCurrency;

.field public static final enum USD:Lcom/appodeal/ads/revenue/RevenueCurrency;


# instance fields
.field private final stringValue:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/appodeal/ads/revenue/RevenueCurrency;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/revenue/RevenueCurrency;->USD:Lcom/appodeal/ads/revenue/RevenueCurrency;

    filled-new-array {v0}, [Lcom/appodeal/ads/revenue/RevenueCurrency;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/appodeal/ads/revenue/RevenueCurrency;

    const-string v1, "USD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/appodeal/ads/revenue/RevenueCurrency;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appodeal/ads/revenue/RevenueCurrency;->USD:Lcom/appodeal/ads/revenue/RevenueCurrency;

    invoke-static {}, Lcom/appodeal/ads/revenue/RevenueCurrency;->$values()[Lcom/appodeal/ads/revenue/RevenueCurrency;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/revenue/RevenueCurrency;->$VALUES:[Lcom/appodeal/ads/revenue/RevenueCurrency;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/appodeal/ads/revenue/RevenueCurrency;->stringValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appodeal/ads/revenue/RevenueCurrency;
    .locals 1

    const-class v0, Lcom/appodeal/ads/revenue/RevenueCurrency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/revenue/RevenueCurrency;

    return-object p0
.end method

.method public static values()[Lcom/appodeal/ads/revenue/RevenueCurrency;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/revenue/RevenueCurrency;->$VALUES:[Lcom/appodeal/ads/revenue/RevenueCurrency;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appodeal/ads/revenue/RevenueCurrency;

    return-object v0
.end method


# virtual methods
.method public final asCurrency()Ljava/util/Currency;
    .locals 2

    sget-object v0, Lcom/appodeal/ads/revenue/RevenueCurrency$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v0

    const-string v1, "getInstance(Locale.US)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final getStringValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/revenue/RevenueCurrency;->stringValue:Ljava/lang/String;

    return-object v0
.end method
