.class public final Lcom/appodeal/ads/networking/cache/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/x0;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/appodeal/ads/storage/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/appodeal/ads/storage/o;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyValueStorage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/networking/cache/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/appodeal/ads/networking/cache/b;->b:Lcom/appodeal/ads/storage/a;

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/appodeal/ads/networking/cache/b;->b:Lcom/appodeal/ads/storage/a;

    iget-object v2, p0, Lcom/appodeal/ads/networking/cache/b;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/appodeal/ads/storage/a;->a(Ljava/lang/String;)Lkotlin/Triple;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {v1}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz v2, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    int-to-long v3, v1

    cmp-long v1, v5, v3

    if-gtz v1, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/appodeal/ads/networking/cache/b;->b:Lcom/appodeal/ads/storage/a;

    iget-object v2, p0, Lcom/appodeal/ads/networking/cache/b;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/appodeal/ads/storage/a;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 6

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "wst"

    const v1, 0x5265c00

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v0, p0, Lcom/appodeal/ads/networking/cache/b;->b:Lcom/appodeal/ads/storage/a;

    iget-object v4, p0, Lcom/appodeal/ads/networking/cache/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string p1, "value.toString()"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {v0 .. v5}, Lcom/appodeal/ads/storage/a;->a(IJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
