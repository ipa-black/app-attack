.class public Lcom/bytedance/sdk/openadsdk/Tgh/cJ;
.super Ljava/lang/Object;
.source "HookObjectManager.java"


# direct methods
.method public static Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Tgh/ac;
    .locals 1

    .line 101
    const-string v0, "net"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 102
    sget-object p0, Lcom/bytedance/sdk/openadsdk/Tgh/fl;->Qhi:Lcom/bytedance/sdk/openadsdk/Tgh/ac;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
