.class public Lcom/criteo/publisher/u;
.super Ljava/lang/Object;
.source "EpochClock.java"

# interfaces
.implements Lcom/criteo/publisher/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
