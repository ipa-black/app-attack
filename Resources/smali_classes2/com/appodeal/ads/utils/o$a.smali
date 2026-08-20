.class public final Lcom/appodeal/ads/utils/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/utils/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/appodeal/ads/l;

.field public final b:Lcom/appodeal/ads/utils/o$b;

.field public final c:J


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/l;Lcom/appodeal/ads/utils/o$b;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/utils/o$a;->a:Lcom/appodeal/ads/l;

    iput-object p2, p0, Lcom/appodeal/ads/utils/o$a;->b:Lcom/appodeal/ads/utils/o$b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/appodeal/ads/l;->getExpTime()J

    move-result-wide p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr p1, v2

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/appodeal/ads/utils/o$a;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/utils/o$a;->a:Lcom/appodeal/ads/l;

    invoke-static {v0}, Lcom/appodeal/ads/utils/o;->b(Lcom/appodeal/ads/l;)V

    iget-object v0, p0, Lcom/appodeal/ads/utils/o$a;->b:Lcom/appodeal/ads/utils/o$b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/appodeal/ads/utils/o$a;->a:Lcom/appodeal/ads/l;

    invoke-interface {v0, v1}, Lcom/appodeal/ads/utils/o$b;->a(Lcom/appodeal/ads/l;)V

    :cond_0
    return-void
.end method
