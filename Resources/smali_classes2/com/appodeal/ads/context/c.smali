.class public final Lcom/appodeal/ads/context/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/appodeal/ads/context/c$a;->a:Lcom/appodeal/ads/context/c$a;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/context/c;->a:Lkotlin/Lazy;

    return-void
.end method

.method public static final a()Lcom/appodeal/ads/context/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/appodeal/ads/context/c;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/context/f;

    return-object v0
.end method
