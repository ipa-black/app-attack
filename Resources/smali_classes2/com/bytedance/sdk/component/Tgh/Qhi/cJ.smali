.class public Lcom/bytedance/sdk/component/Tgh/Qhi/cJ;
.super Ljava/lang/Object;
.source "AdLogManager.java"


# static fields
.field private static volatile Qhi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ;->Qhi:Ljava/util/List;

    return-void
.end method

.method public static CJ()V
    .locals 1

    .line 127
    sget-object v0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/fl;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->cJ()V

    return-void
.end method

.method public static Qhi()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 66
    sget-object v0, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ;->Qhi:Ljava/util/List;

    return-object v0
.end method

.method public static Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;)V
    .locals 1

    .line 155
    sget-object v0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/fl;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;)V

    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;Landroid/content/Context;)V
    .locals 1

    .line 33
    sget-object v0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/fl;

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;Landroid/content/Context;)V

    return-void
.end method

.method public static Qhi(Ljava/lang/String;Ljava/util/List;ZILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    .line 142
    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ;->Qhi(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;ILjava/lang/String;)V

    return-void
.end method

.method public static Qhi(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;ILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 146
    sget-object v0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/fl;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;ILjava/lang/String;)V

    return-void
.end method

.method public static Qhi(Ljava/lang/String;Z)V
    .locals 1

    .line 134
    sget-object v0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/fl;

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi(Ljava/lang/String;Z)V

    return-void
.end method

.method public static Qhi(Z)V
    .locals 1

    .line 61
    sget-object v0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/fl;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi(Z)V

    return-void
.end method

.method public static ac()V
    .locals 1

    const/4 v0, 0x0

    .line 121
    invoke-static {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ;->Qhi(Z)V

    .line 122
    sget-object v0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/fl;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi()V

    return-void
.end method

.method public static cJ()Z
    .locals 1

    .line 76
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->hpZ()Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Tgh()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static fl()V
    .locals 1

    .line 150
    sget-object v0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/fl;

    return-void
.end method
