.class public Lcom/criteo/publisher/n0/o;
.super Ljava/lang/Object;
.source "PreconditionsUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 2

    .line 31
    invoke-static {}, Lcom/criteo/publisher/s;->c()Lcom/criteo/publisher/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/s;->J0()Lcom/criteo/publisher/logging/h;

    move-result-object v0

    const-class v1, Lcom/criteo/publisher/n0/o;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/logging/h;->a(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    .line 32
    invoke-static {p0}, Lcom/criteo/publisher/v;->a(Ljava/lang/Throwable;)Lcom/criteo/publisher/logging/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    .line 34
    invoke-static {}, Lcom/criteo/publisher/s;->c()Lcom/criteo/publisher/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/s;->m0()Lcom/criteo/publisher/n0/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/n0/g;->r()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    .line 61
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Expected non null value, but null occurs."

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/criteo/publisher/n0/o;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
