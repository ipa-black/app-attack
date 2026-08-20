.class public final Lcom/appodeal/ads/v;
.super Lcom/appodeal/ads/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/o<",
        "Lcom/appodeal/ads/r<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/appodeal/ads/l;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/appodeal/ads/l;

.field public final synthetic e:Lcom/appodeal/ads/r;

.field public final synthetic f:Lcom/appodeal/ads/u;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/u;Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;ILcom/appodeal/ads/l;Lcom/appodeal/ads/r;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/v;->f:Lcom/appodeal/ads/u;

    iput-object p5, p0, Lcom/appodeal/ads/v;->d:Lcom/appodeal/ads/l;

    iput-object p6, p0, Lcom/appodeal/ads/v;->e:Lcom/appodeal/ads/r;

    invoke-direct {p0, p2, p3, p4}, Lcom/appodeal/ads/o;-><init>(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    invoke-static {}, Lcom/appodeal/ads/q4;->k()Lcom/appodeal/ads/n0;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/v;->f:Lcom/appodeal/ads/u;

    .line 1
    iget-object v1, v1, Lcom/appodeal/ads/u;->f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    .line 2
    iget-object v2, p0, Lcom/appodeal/ads/v;->d:Lcom/appodeal/ads/l;

    .line 3
    iget-object v2, v2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    .line 4
    invoke-interface {v2}, Lcom/appodeal/ads/AdUnit;->getEcpm()D

    move-result-wide v2

    .line 5
    iget-object v4, p0, Lcom/appodeal/ads/v;->d:Lcom/appodeal/ads/l;

    .line 6
    iget-object v5, v4, Lcom/appodeal/ads/l;->d:Ljava/lang/String;

    .line 7
    iget-object v4, v4, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    .line 8
    invoke-interface {v4}, Lcom/appodeal/ads/AdUnit;->getAdUnitName()Ljava/lang/String;

    move-result-object v6

    move-object v4, v5

    move-object v5, v6

    .line 9
    invoke-virtual/range {v0 .. v5}, Lcom/appodeal/ads/n0;->d(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;DLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/v;->f:Lcom/appodeal/ads/u;

    .line 10
    iget-object v0, v0, Lcom/appodeal/ads/u;->d:Lcom/appodeal/ads/b0;

    .line 11
    iget-object v1, p0, Lcom/appodeal/ads/v;->e:Lcom/appodeal/ads/r;

    iget-object v2, p0, Lcom/appodeal/ads/v;->d:Lcom/appodeal/ads/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 13
    iget-object v1, v2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v1}, Lcom/appodeal/ads/AdUnit;->getId()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 15
    iget-object v1, v2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v3, v4}, Lcom/appodeal/ads/g5;->b(J)V

    .line 17
    :cond_0
    iget-object v0, v0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    const-string v1, "Load Start"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;Lcom/appodeal/ads/AdUnit;Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method
