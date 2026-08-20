.class public Lcom/criteo/publisher/n0/g;
.super Ljava/lang/Object;
.source "BuildConfigWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public b()I
    .locals 1

    const/16 v0, 0x13

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 36
    sget-boolean v0, Lcom/criteo/publisher/g;->a:Z

    const-string v1, "https://bidder.criteo.com"

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "com.criteo.publisher.config.cdbUrl"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public d()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 95
    const-string v0, "criteo_metrics"

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 87
    const-string v0, "criteo_metrics_queue"

    return-object v0
.end method

.method public g()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public h()I
    .locals 1

    const/16 v0, 0xaa

    return v0
.end method

.method public i()I
    .locals 1

    const/16 v0, 0x1388

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, "https://gum.criteo.com"

    return-object v0
.end method

.method public k()I
    .locals 1

    const v0, 0xf000

    return v0
.end method

.method public l()I
    .locals 1

    const v0, 0xc000

    return v0
.end method

.method public m()I
    .locals 1

    const v0, 0x3e800

    return v0
.end method

.method public n()I
    .locals 1

    const v0, 0xea60

    return v0
.end method

.method public o()I
    .locals 1

    const/16 v0, 0xc8

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 158
    const-string v0, "criteo_remote_logs_queue"

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 31
    const-string v0, "4.6.0"

    return-object v0
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
