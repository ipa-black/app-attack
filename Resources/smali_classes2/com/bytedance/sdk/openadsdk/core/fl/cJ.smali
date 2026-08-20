.class Lcom/bytedance/sdk/openadsdk/core/fl/cJ;
.super Ljava/lang/Object;
.source "SecSdkHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/fl/cJ$Qhi;
    }
.end annotation


# static fields
.field private static Qhi:Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;


# instance fields
.field private cJ:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/fl/cJ;->cJ:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/fl/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/fl/cJ$1;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/fl/cJ;-><init>()V

    return-void
.end method

.method public static cJ()Lcom/bytedance/sdk/openadsdk/core/fl/cJ;
    .locals 1

    .line 69
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/fl/cJ$Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/fl/cJ;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public CJ()Ljava/lang/String;
    .locals 1

    .line 96
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/fl/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->CJ()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 101
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public Qhi(Ljava/lang/String;[B)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 105
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/fl/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->Qhi(Ljava/lang/String;[B)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 108
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public Qhi()V
    .locals 1

    .line 56
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/fl/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->ac()V

    :cond_0
    return-void
.end method

.method public Qhi(Landroid/view/MotionEvent;)V
    .locals 1

    .line 125
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/fl/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->Qhi(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 1

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 41
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/fl/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;

    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->Qhi(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public Tgh()I
    .locals 1

    .line 118
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/fl/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->Tgh()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public ac(Ljava/lang/String;)V
    .locals 1

    .line 78
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/fl/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->ac(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public ac()Z
    .locals 1

    .line 85
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/fl/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 88
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->cJ()Z

    move-result v0

    return v0
.end method

.method public cJ(Ljava/lang/String;)V
    .locals 1

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 50
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/fl/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->cJ(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public fl()Ljava/lang/String;
    .locals 1

    .line 112
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/fl/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->fl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 115
    :cond_0
    const-string v0, ""

    return-object v0
.end method
