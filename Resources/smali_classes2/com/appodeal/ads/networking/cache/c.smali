.class public final Lcom/appodeal/ads/networking/cache/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/x0;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/appodeal/ads/storage/a;


# direct methods
.method public synthetic constructor <init>(Lcom/appodeal/ads/storage/a;)V
    .locals 1

    const-string v0, "init_response"

    invoke-direct {p0, v0, p1}, Lcom/appodeal/ads/networking/cache/c;-><init>(Ljava/lang/String;Lcom/appodeal/ads/storage/a;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/appodeal/ads/storage/a;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyValueStorage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/networking/cache/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/appodeal/ads/networking/cache/c;->b:Lcom/appodeal/ads/storage/a;

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/appodeal/ads/networking/cache/c;->b:Lcom/appodeal/ads/storage/a;

    iget-object v2, p0, Lcom/appodeal/ads/networking/cache/c;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/appodeal/ads/storage/a;->a(Ljava/lang/String;)Lkotlin/Triple;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/appodeal/ads/networking/cache/c;->b:Lcom/appodeal/ads/storage/a;

    iget-object v2, p0, Lcom/appodeal/ads/networking/cache/c;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/appodeal/ads/storage/a;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/appodeal/ads/networking/cache/c;->b:Lcom/appodeal/ads/storage/a;

    iget-object v4, p0, Lcom/appodeal/ads/networking/cache/c;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string p1, "value.toString()"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const v1, 0x7fffffff

    invoke-interface/range {v0 .. v5}, Lcom/appodeal/ads/storage/a;->a(IJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
