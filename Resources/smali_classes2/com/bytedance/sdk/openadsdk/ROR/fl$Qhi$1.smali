.class final Lcom/bytedance/sdk/openadsdk/ROR/fl$Qhi$1;
.super Ljava/lang/Object;
.source "ImageLoaderWrapper.java"

# interfaces
.implements Lcom/bytedance/sdk/component/fl/fl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/ROR/fl$Qhi;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/component/fl/hpZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/component/fl/cJ/Tgh;Ljava/lang/Throwable;)Lcom/bytedance/sdk/component/fl/cJ/fl;
    .locals 3

    .line 182
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/component/fl/cJ/Tgh;->ac(J)V

    .line 188
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/fl/cJ/fl;

    const v1, 0x181cd

    const-string v2, "net failed"

    invoke-direct {v0, v1, p2, v2}, Lcom/bytedance/sdk/component/fl/cJ/fl;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/fl/cJ/fl;->Qhi(Lcom/bytedance/sdk/component/fl/Sf;)V

    return-object v0
.end method

.method private Qhi(Lcom/bytedance/sdk/component/fl/Tgh;Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/fl/Tgh;",
            "Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 155
    invoke-interface {p1}, Lcom/bytedance/sdk/component/fl/Tgh;->cJ()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 157
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->ROR()Lcom/bytedance/sdk/component/cJ/Qhi/ROR;

    move-result-object p1

    .line 158
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 160
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/ROR;->Qhi()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 162
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/cJ/Qhi/ROR;->Qhi(I)Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/cJ/Qhi/ROR;->cJ(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    .line 166
    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public synthetic Qhi(Lcom/bytedance/sdk/component/fl/Tgh;)Lcom/bytedance/sdk/component/fl/ROR;
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/ROR/fl$Qhi$1;->cJ(Lcom/bytedance/sdk/component/fl/Tgh;)Lcom/bytedance/sdk/component/fl/cJ/fl;

    move-result-object p1

    return-object p1
.end method

.method public cJ(Lcom/bytedance/sdk/component/fl/Tgh;)Lcom/bytedance/sdk/component/fl/cJ/fl;
    .locals 6

    .line 102
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/iMK/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->cJ()Lcom/bytedance/sdk/component/ROR/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ROR/Qhi;->fl()Lcom/bytedance/sdk/component/cJ/Qhi/zc;

    move-result-object v0

    .line 103
    new-instance v1, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;-><init>()V

    .line 104
    invoke-interface {p1}, Lcom/bytedance/sdk/component/fl/Tgh;->Qhi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->Qhi()Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->cJ()Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    move-result-object v1

    .line 109
    invoke-interface {p1}, Lcom/bytedance/sdk/component/fl/Tgh;->ac()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 110
    new-instance v2, Lcom/bytedance/sdk/component/fl/cJ/Tgh;

    invoke-direct {v2}, Lcom/bytedance/sdk/component/fl/cJ/Tgh;-><init>()V

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/bytedance/sdk/component/fl/cJ/Tgh;->Qhi(J)V

    .line 117
    :cond_1
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/cJ/Qhi/zc;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/iMK;)Lcom/bytedance/sdk/component/cJ/Qhi/cJ;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/cJ;->Qhi()Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/component/fl/cJ/Tgh;->cJ(J)V

    .line 123
    :cond_2
    invoke-direct {p0, p1, v3}, Lcom/bytedance/sdk/openadsdk/ROR/fl$Qhi$1;->Qhi(Lcom/bytedance/sdk/component/fl/Tgh;Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;)Ljava/util/Map;

    move-result-object p1

    .line 125
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->Tgh()Lcom/bytedance/sdk/component/cJ/Qhi/HzH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/HzH;->CJ()[B

    move-result-object v0

    if-eqz v2, :cond_3

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/bytedance/sdk/component/fl/cJ/Tgh;->ac(J)V

    .line 131
    :cond_3
    new-instance v1, Lcom/bytedance/sdk/component/fl/cJ/fl;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->ac()I

    move-result v4

    const-string v5, ""

    invoke-direct {v1, v4, v0, v5, p1}, Lcom/bytedance/sdk/component/fl/cJ/fl;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 133
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/fl/cJ/fl;->Qhi(Lcom/bytedance/sdk/component/fl/Sf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-static {v3}, Lcom/bytedance/sdk/component/fl/ac/ac/cJ;->Qhi(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception p1

    .line 139
    :try_start_1
    invoke-direct {p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/ROR/fl$Qhi$1;->Qhi(Lcom/bytedance/sdk/component/fl/cJ/Tgh;Ljava/lang/Throwable;)Lcom/bytedance/sdk/component/fl/cJ/fl;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 142
    invoke-static {v3}, Lcom/bytedance/sdk/component/fl/ac/ac/cJ;->Qhi(Ljava/io/Closeable;)V

    return-object p1

    :catchall_1
    move-exception p1

    invoke-static {v3}, Lcom/bytedance/sdk/component/fl/ac/ac/cJ;->Qhi(Ljava/io/Closeable;)V

    throw p1
.end method
