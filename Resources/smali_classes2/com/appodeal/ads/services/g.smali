.class public final Lcom/appodeal/ads/services/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/Lazy;

.field public static final b:Lkotlin/Lazy;

.field public static final c:Lkotlin/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/appodeal/ads/services/g$a;->a:Lcom/appodeal/ads/services/g$a;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/services/g;->a:Lkotlin/Lazy;

    sget-object v0, Lcom/appodeal/ads/services/g$b;->a:Lcom/appodeal/ads/services/g$b;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/services/g;->b:Lkotlin/Lazy;

    sget-object v0, Lcom/appodeal/ads/services/g$c;->a:Lcom/appodeal/ads/services/g$c;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/services/g;->c:Lkotlin/Lazy;

    return-void
.end method

.method public static final a()Lcom/appodeal/ads/services/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/appodeal/ads/services/g;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/services/d;

    return-object v0
.end method

.method public static final b()Lcom/appodeal/ads/services/c;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/services/g;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/services/c;

    return-object v0
.end method

.method public static final c()Lcom/appodeal/ads/services/c$a;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/services/g;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/services/c$a;

    return-object v0
.end method
