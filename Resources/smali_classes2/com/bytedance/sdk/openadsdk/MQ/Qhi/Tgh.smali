.class public Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;
.super Ljava/lang/Object;
.source "PAGMrcTrackerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;
    }
.end annotation


# static fields
.field private static final Qhi:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/openadsdk/MQ/Qhi/cJ;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->Qhi:Ljava/util/Map;

    return-void
.end method

.method private static Qhi(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/tP;ZLcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;)Lcom/bytedance/sdk/openadsdk/MQ/Qhi/cJ;
    .locals 3

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 67
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HLI()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/Integer;

    move-result-object v0

    .line 71
    sget-object v1, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->Qhi:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/cJ;

    if-eqz p1, :cond_1

    .line 74
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/cJ;->Qhi(Landroid/view/View;)V

    :cond_1
    return-object p1

    .line 78
    :cond_2
    invoke-static {p2, v0, p0, p1, p3}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/cJ;->Qhi(ZLjava/lang/Integer;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;)Lcom/bytedance/sdk/openadsdk/MQ/Qhi/cJ;

    move-result-object p0

    .line 79
    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static Qhi(Ljava/lang/Integer;)Lcom/bytedance/sdk/openadsdk/MQ/Qhi/cJ;
    .locals 1

    .line 122
    sget-object v0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->Qhi:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/cJ;

    return-object p0
.end method

.method public static Qhi(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;)V
    .locals 2

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 27
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HWc()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    .line 31
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    const/4 v1, -0x1

    .line 33
    iput v1, p2, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;->Qhi:I

    .line 35
    :cond_1
    invoke-static {p0, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->Qhi(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/tP;ZLcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;)Lcom/bytedance/sdk/openadsdk/MQ/Qhi/cJ;

    move-result-object p0

    .line 36
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/MQ/Qhi/cJ;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static Qhi(Lcom/bytedance/sdk/openadsdk/MQ/Qhi/cJ;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/cJ;->Qhi()V

    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/MQ/Qhi/cJ;I)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 103
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/cJ;->Qhi(I)V

    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 2

    if-eqz p0, :cond_2

    .line 107
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HLI()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/Integer;

    move-result-object p0

    .line 111
    sget-object v0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->Qhi:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/cJ;

    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/cJ;->WAv()V

    .line 115
    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->cJ(Ljava/lang/Integer;)V

    .line 116
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p0

    if-gtz p0, :cond_2

    .line 117
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Sf;->Qhi()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V
    .locals 1

    if-eqz p0, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HLI()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/Integer;

    move-result-object p0

    .line 95
    sget-object v0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->Qhi:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/cJ;

    .line 96
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/MQ/Qhi/cJ;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 48
    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object v1

    .line 50
    const-string v2, "open_ad"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "fullscreen_interstitial_ad"

    .line 51
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "rewarded_video"

    .line 52
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 54
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hpZ()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 55
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hpZ()I

    move-result v1

    const/16 v2, 0x21

    if-eq v1, v2, :cond_2

    .line 56
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/Integer;
    .locals 2

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->jWV()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HLI()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static cJ(Ljava/lang/Integer;)V
    .locals 1

    .line 126
    sget-object v0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->Qhi:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
