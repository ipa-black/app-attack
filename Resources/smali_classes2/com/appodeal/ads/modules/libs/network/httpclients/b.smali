.class public final Lcom/appodeal/ads/modules/libs/network/httpclients/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/Lazy;

.field public static final b:Lkotlin/Lazy;

.field public static final c:Lkotlin/Lazy;

.field public static final d:Lkotlin/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/appodeal/ads/modules/libs/network/httpclients/b$a;->a:Lcom/appodeal/ads/modules/libs/network/httpclients/b$a;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/modules/libs/network/httpclients/b;->a:Lkotlin/Lazy;

    sget-object v0, Lcom/appodeal/ads/modules/libs/network/httpclients/b$d;->a:Lcom/appodeal/ads/modules/libs/network/httpclients/b$d;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/modules/libs/network/httpclients/b;->b:Lkotlin/Lazy;

    sget-object v0, Lcom/appodeal/ads/modules/libs/network/httpclients/b$c;->a:Lcom/appodeal/ads/modules/libs/network/httpclients/b$c;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/modules/libs/network/httpclients/b;->c:Lkotlin/Lazy;

    sget-object v0, Lcom/appodeal/ads/modules/libs/network/httpclients/b$b;->a:Lcom/appodeal/ads/modules/libs/network/httpclients/b$b;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/modules/libs/network/httpclients/b;->d:Lkotlin/Lazy;

    return-void
.end method

.method public static final a()Lcom/appodeal/ads/modules/libs/network/httpclients/a;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/modules/libs/network/httpclients/b;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/modules/libs/network/httpclients/a;

    return-object v0
.end method

.method public static final b()Lcom/appodeal/ads/modules/libs/network/httpclients/a;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/modules/libs/network/httpclients/b;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/modules/libs/network/httpclients/a;

    return-object v0
.end method

.method public static final c()Lcom/appodeal/ads/modules/libs/network/httpclients/a;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/modules/libs/network/httpclients/b;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/modules/libs/network/httpclients/a;

    return-object v0
.end method

.method public static final d()Lcom/appodeal/ads/modules/libs/network/httpclients/a;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/modules/libs/network/httpclients/b;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/modules/libs/network/httpclients/a;

    return-object v0
.end method
