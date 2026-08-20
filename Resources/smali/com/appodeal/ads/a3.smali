.class public final Lcom/appodeal/ads/a3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/appodeal/ads/l1;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/l1;)V
    .locals 1

    const-string v0, "getServiceOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/a3;->a:Lcom/appodeal/ads/l1;

    return-void
.end method

.method public static final synthetic a(Lcom/appodeal/ads/a3;)Lcom/appodeal/ads/l1;
    .locals 0

    iget-object p0, p0, Lcom/appodeal/ads/a3;->a:Lcom/appodeal/ads/l1;

    return-object p0
.end method

.method public static a(Lcom/appodeal/ads/a3;Landroid/content/Context;Lcom/appodeal/ads/networking/b;Lcom/appodeal/ads/v4;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lcom/appodeal/ads/services/b;->a()Lcom/appodeal/ads/modules/common/internal/service/ServicesRegistry;

    move-result-object v9

    sget-boolean v0, Lcom/appodeal/ads/r0;->b:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/appodeal/ads/f1;->l()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/appodeal/ads/r0;->d:Lcom/appodeal/ads/utils/Log$LogLevel;

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v4, v0

    invoke-static {}, Lcom/appodeal/ads/x2;->a()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/appodeal/ads/e1;->a:Lcom/appodeal/ads/e1;

    const-string v0, "instance"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/appodeal/ads/j0;->c:Lcom/appodeal/ads/j0;

    sget-object v8, Lcom/appodeal/ads/m5;->c:Lcom/appodeal/ads/m5;

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance v11, Lcom/appodeal/ads/z2;

    const/4 v10, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v10}, Lcom/appodeal/ads/z2;-><init>(Lcom/appodeal/ads/a3;Landroid/content/Context;Lcom/appodeal/ads/networking/b;ZLjava/lang/String;Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;Lcom/appodeal/ads/modules/common/internal/data/DeviceData;Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;Lcom/appodeal/ads/modules/common/internal/service/ServicesRegistry;Lkotlin/coroutines/Continuation;)V

    invoke-static {v11, p3}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
