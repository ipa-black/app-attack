.class public final Lcom/appodeal/ads/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/b0;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/b0;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/x;->a:Lcom/appodeal/ads/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/x;->a:Lcom/appodeal/ads/b0;

    iget-object v1, v0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    invoke-virtual {v1}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {v1}, Lcom/appodeal/ads/r;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    .line 3
    sget-object v1, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 4
    iget-object v1, v1, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 5
    invoke-virtual {v1}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lcom/appodeal/ads/u;->c(Landroid/content/Context;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/x;->a:Lcom/appodeal/ads/b0;

    iget-object v0, v0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    .line 8
    invoke-virtual {v0}, Lcom/appodeal/ads/u;->h()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    .line 9
    iget v1, v0, Lcom/appodeal/ads/u;->B:I

    int-to-float v1, v1

    iget v2, v0, Lcom/appodeal/ads/u;->z:F

    goto :goto_0

    :cond_2
    iget v1, v0, Lcom/appodeal/ads/u;->B:I

    int-to-float v1, v1

    iget v2, v0, Lcom/appodeal/ads/u;->A:F

    :goto_0
    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/appodeal/ads/u;->B:I

    iget v1, v0, Lcom/appodeal/ads/u;->B:I

    const v2, 0x186a0

    if-lt v1, v2, :cond_3

    iput v2, v0, Lcom/appodeal/ads/u;->B:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method
