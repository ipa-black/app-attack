.class public final Lcom/appodeal/ads/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/o;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/o;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/n;->a:Lcom/appodeal/ads/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/n;->a:Lcom/appodeal/ads/o;

    .line 1
    iget-object v1, v0, Lcom/appodeal/ads/o;->b:Lcom/appodeal/ads/l;

    .line 2
    sget-object v2, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 3
    iget-object v3, v0, Lcom/appodeal/ads/o;->a:Lcom/appodeal/ads/r;

    .line 4
    iget v0, v0, Lcom/appodeal/ads/o;->c:I

    .line 5
    new-instance v4, Lcom/appodeal/ads/n$a;

    invoke-direct {v4, p0}, Lcom/appodeal/ads/n$a;-><init>(Lcom/appodeal/ads/n;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/appodeal/ads/l;->a(Lcom/appodeal/ads/context/b;Lcom/appodeal/ads/r;ILcom/appodeal/ads/n$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/appodeal/ads/n;->a:Lcom/appodeal/ads/o;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-static {v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    instance-of v0, v0, Lorg/json/JSONException;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/networking/LoadingError;->IncorrectAdunit:Lcom/appodeal/ads/networking/LoadingError;

    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/appodeal/ads/networking/LoadingError;->InternalError:Lcom/appodeal/ads/networking/LoadingError;

    .line 9
    :goto_0
    check-cast v1, Lcom/appodeal/ads/v;

    .line 10
    iget-object v2, v1, Lcom/appodeal/ads/v;->f:Lcom/appodeal/ads/u;

    .line 11
    iget-object v2, v2, Lcom/appodeal/ads/u;->d:Lcom/appodeal/ads/b0;

    .line 12
    iget-object v3, v1, Lcom/appodeal/ads/v;->e:Lcom/appodeal/ads/r;

    iget-object v1, v1, Lcom/appodeal/ads/v;->d:Lcom/appodeal/ads/l;

    invoke-virtual {v2, v3, v1, v0}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/networking/LoadingError;)V

    :goto_1
    return-void
.end method
