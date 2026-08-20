.class public final Lcom/appodeal/ads/q4$h$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/q4$h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/appodeal/ads/inapp/InAppPurchase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/appodeal/ads/inapp/InAppPurchase;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/q4$h$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/appodeal/ads/q4$h$a;->b:Lcom/appodeal/ads/inapp/InAppPurchase;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/q4$h$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context.applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    invoke-static {v1}, Lcom/appodeal/ads/q4;->b(Lcom/appodeal/ads/q4;)Lcom/appodeal/ads/modules/common/internal/domain/ParsePriceUseCase;

    move-result-object v1

    iget-object v2, p0, Lcom/appodeal/ads/q4$h$a;->b:Lcom/appodeal/ads/inapp/InAppPurchase;

    invoke-virtual {v2}, Lcom/appodeal/ads/inapp/InAppPurchase;->getPrice()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/appodeal/ads/q4$h$a;->b:Lcom/appodeal/ads/inapp/InAppPurchase;

    invoke-virtual {v3}, Lcom/appodeal/ads/inapp/InAppPurchase;->getCurrency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/appodeal/ads/modules/common/internal/domain/ParsePriceUseCase;->invoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    :goto_0
    iget-object v3, p0, Lcom/appodeal/ads/q4$h$a;->b:Lcom/appodeal/ads/inapp/InAppPurchase;

    invoke-virtual {v3}, Lcom/appodeal/ads/inapp/InAppPurchase;->getCurrency()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/appodeal/ads/q4;->a(Landroid/content/Context;DLjava/lang/String;)V

    .line 2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
