.class public final Lcom/appodeal/ads/utils/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/utils/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/appodeal/ads/utils/q$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/utils/q$b;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/appodeal/ads/utils/q;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/utils/q;Lcom/appodeal/ads/utils/q$b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/utils/q$a;->c:Lcom/appodeal/ads/utils/q;

    iput-object p2, p0, Lcom/appodeal/ads/utils/q$a;->a:Lcom/appodeal/ads/utils/q$b;

    iput-object p3, p0, Lcom/appodeal/ads/utils/q$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTrackError()V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/utils/q$a;->a:Lcom/appodeal/ads/utils/q$b;

    invoke-interface {v0}, Lcom/appodeal/ads/utils/q$b;->onHandleError()V

    return-void
.end method

.method public final onTrackSuccess(Lorg/json/JSONObject;)V
    .locals 8

    const-string v0, "url"

    const-string v1, "urls"

    const-string v2, ""

    if-eqz p1, :cond_5

    :try_start_0
    const-string v3, "status"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ok"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/appodeal/ads/utils/q$a;->c:Lcom/appodeal/ads/utils/q;

    iget-object v0, p0, Lcom/appodeal/ads/utils/q$a;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/appodeal/ads/utils/q$a;->a:Lcom/appodeal/ads/utils/q$b;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/appodeal/ads/utils/q$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Lcom/appodeal/ads/utils/q$$ExternalSyntheticLambda0;-><init>(Lcom/appodeal/ads/utils/q$b;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 2
    sget-object v0, Lcom/appodeal/ads/h5;->a:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    move-object v6, v2

    move v5, v3

    .line 4
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_4

    if-nez v5, :cond_4

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v4}, Lcom/appodeal/ads/n5;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move-object v2, v6

    goto :goto_2

    :catch_0
    move-exception v0

    .line 5
    :try_start_2
    invoke-static {v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    .line 6
    sget-object v0, Lcom/appodeal/ads/h5;->a:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    :goto_2
    iput-object v2, p1, Lcom/appodeal/ads/utils/q;->a:Ljava/lang/String;

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/appodeal/ads/utils/q$a;->a:Lcom/appodeal/ads/utils/q$b;

    invoke-interface {p1}, Lcom/appodeal/ads/utils/q$b;->onHandleError()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/appodeal/ads/utils/q$a;->a:Lcom/appodeal/ads/utils/q$b;

    invoke-interface {p1}, Lcom/appodeal/ads/utils/q$b;->onHandleError()V

    :goto_3
    return-void
.end method
