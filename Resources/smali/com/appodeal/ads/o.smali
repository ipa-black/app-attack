.class public abstract Lcom/appodeal/ads/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdRequestType:",
        "Lcom/appodeal/ads/r;",
        "AdObjectType:",
        "Lcom/appodeal/ads/l;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final a:Lcom/appodeal/ads/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdRequestType;"
        }
    .end annotation
.end field

.field public final b:Lcom/appodeal/ads/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdObjectType;"
        }
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;TAdObjectType;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/o;->a:Lcom/appodeal/ads/r;

    iput-object p2, p0, Lcom/appodeal/ads/o;->b:Lcom/appodeal/ads/l;

    iput p3, p0, Lcom/appodeal/ads/o;->c:I

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final run()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/appodeal/ads/o;->a()V

    .line 1
    new-instance v0, Lcom/appodeal/ads/n;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/n;-><init>(Lcom/appodeal/ads/o;)V

    .line 2
    sget-object v1, Lcom/appodeal/ads/h5;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    instance-of v0, v0, Lorg/json/JSONException;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/networking/LoadingError;->IncorrectAdunit:Lcom/appodeal/ads/networking/LoadingError;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/appodeal/ads/networking/LoadingError;->InternalError:Lcom/appodeal/ads/networking/LoadingError;

    .line 5
    :goto_0
    move-object v1, p0

    check-cast v1, Lcom/appodeal/ads/v;

    .line 6
    iget-object v2, v1, Lcom/appodeal/ads/v;->f:Lcom/appodeal/ads/u;

    .line 7
    iget-object v2, v2, Lcom/appodeal/ads/u;->d:Lcom/appodeal/ads/b0;

    .line 8
    iget-object v3, v1, Lcom/appodeal/ads/v;->e:Lcom/appodeal/ads/r;

    iget-object v1, v1, Lcom/appodeal/ads/v;->d:Lcom/appodeal/ads/l;

    invoke-virtual {v2, v3, v1, v0}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/networking/LoadingError;)V

    :goto_1
    return-void
.end method
