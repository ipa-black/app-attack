.class public Lcom/bytedance/sdk/openadsdk/iMK/cJ;
.super Ljava/lang/Object;
.source "TTAdNetDepend.java"

# interfaces
.implements Lcom/bytedance/sdk/component/ROR/ac/cJ;


# static fields
.field public static Qhi:Ljava/lang/String; = "sp_multi_ttadnet_config"


# instance fields
.field private final cJ:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/iMK/cJ;->cJ:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public CJ()I
    .locals 1

    const/16 v0, 0x183e

    return v0
.end method

.method public Qhi()I
    .locals 1

    .line 35
    const-string v0, "1371"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public Qhi(Landroid/content/Context;)Landroid/location/Address;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public Qhi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    sget-object p1, Lcom/bytedance/sdk/openadsdk/iMK/cJ;->Qhi:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/cJ;->cJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Qhi(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 73
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 74
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 75
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 76
    sget-object v1, Lcom/bytedance/sdk/openadsdk/iMK/cJ;->Qhi:Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v1, p2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/cJ;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 77
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 78
    sget-object v1, Lcom/bytedance/sdk/openadsdk/iMK/cJ;->Qhi:Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    check-cast v0, Ljava/lang/Long;

    invoke-static {v1, p2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/cJ;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 79
    :cond_2
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 80
    sget-object v1, Lcom/bytedance/sdk/openadsdk/iMK/cJ;->Qhi:Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    check-cast v0, Ljava/lang/Float;

    invoke-static {v1, p2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/cJ;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_0

    .line 81
    :cond_3
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 82
    sget-object v1, Lcom/bytedance/sdk/openadsdk/iMK/cJ;->Qhi:Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v1, p2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/cJ;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 83
    :cond_4
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 84
    sget-object v1, Lcom/bytedance/sdk/openadsdk/iMK/cJ;->Qhi:Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, p2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/cJ;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_5
    return-void
.end method

.method public Tgh()[Ljava/lang/String;
    .locals 12

    const/4 v0, 0x4

    .line 98
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "tnc16-useast1a.isnssdk.com"

    aput-object v3, v1, v2

    const/4 v4, 0x1

    const-string v5, "tnc16-useast1a.byteoversea.com"

    aput-object v5, v1, v4

    const/4 v6, 0x2

    const-string v7, "tnc16-alisg.isnssdk.com"

    aput-object v7, v1, v6

    const/4 v8, 0x3

    const-string v9, "tnc16-alisg.byteoversea.com"

    aput-object v9, v1, v8

    .line 101
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v10

    invoke-interface {v10}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->PAe()Ljava/lang/String;

    move-result-object v10

    .line 103
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 104
    const-string v11, "SG"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "CN"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 105
    :cond_0
    new-array v1, v0, [Ljava/lang/String;

    aput-object v7, v1, v2

    aput-object v9, v1, v4

    aput-object v3, v1, v6

    aput-object v5, v1, v8

    :cond_1
    return-object v1

    .line 110
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/js;->hpZ()I

    move-result v10

    if-eq v10, v6, :cond_3

    if-ne v10, v4, :cond_4

    .line 113
    :cond_3
    new-array v1, v0, [Ljava/lang/String;

    aput-object v7, v1, v2

    aput-object v9, v1, v4

    aput-object v3, v1, v6

    aput-object v5, v1, v8

    :cond_4
    return-object v1
.end method

.method public ac()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, "android"

    return-object v0
.end method

.method public cJ()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, "pangle_sdk"

    return-object v0
.end method

.method public fl()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/iMK/cJ;->cJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/zc;->Qhi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
