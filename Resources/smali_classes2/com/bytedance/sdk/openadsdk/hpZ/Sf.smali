.class public Lcom/bytedance/sdk/openadsdk/hpZ/Sf;
.super Ljava/lang/Object;
.source "PlayableLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/hpZ/Sf$Qhi;
    }
.end annotation


# static fields
.field private static Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/Sf$Qhi;


# direct methods
.method public static Qhi(Lcom/bytedance/sdk/openadsdk/hpZ/Sf$Qhi;)V
    .locals 0

    .line 8
    sput-object p0, Lcom/bytedance/sdk/openadsdk/hpZ/Sf;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/Sf$Qhi;

    return-void
.end method

.method public static Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 28
    sget-object v0, Lcom/bytedance/sdk/openadsdk/hpZ/Sf;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/Sf$Qhi;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 32
    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    .line 34
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/hpZ/Sf;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/Sf$Qhi;

    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/hpZ/Sf$Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static Qhi()Z
    .locals 1

    .line 17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/hpZ/Sf;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/Sf$Qhi;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
