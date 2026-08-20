.class public Lcom/bytedance/sdk/openadsdk/dislike/cJ;
.super Ljava/lang/Object;
.source "TTAdDislikeImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/CQU;


# instance fields
.field private CJ:Z

.field public Qhi:Lcom/bytedance/sdk/openadsdk/dislike/Tgh;

.field private ac:Lcom/bytedance/sdk/openadsdk/dislike/ac;

.field private final cJ:Landroid/content/Context;

.field private fl:Lcom/bytedance/sdk/openadsdk/core/CQU$Qhi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 32
    const-string v0, "Dislike Initialization must use activity, please pass in TTAdManager.createAdNative(activity)"

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/ABk;->cJ(Ljava/lang/String;)V

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->cJ:Landroid/content/Context;

    .line 35
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->Qhi(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/dislike/cJ;)Lcom/bytedance/sdk/openadsdk/core/CQU$Qhi;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->fl:Lcom/bytedance/sdk/openadsdk/core/CQU$Qhi;

    return-object p0
.end method

.method private Qhi(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/ac;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->cJ:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p4}, Lcom/bytedance/sdk/openadsdk/dislike/ac;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->ac:Lcom/bytedance/sdk/openadsdk/dislike/ac;

    .line 40
    new-instance p2, Lcom/bytedance/sdk/openadsdk/dislike/Tgh;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->cJ:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/bytedance/sdk/openadsdk/dislike/Tgh;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/Tgh;

    .line 41
    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/dislike/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/Tgh;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/dislike/Tgh;->Qhi(Ljava/lang/String;)V

    .line 43
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/Tgh;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/dislike/cJ$1;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/dislike/cJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/cJ;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/dislike/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/dislike/Tgh$Qhi;)V

    .line 86
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->ac:Lcom/bytedance/sdk/openadsdk/dislike/ac;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/dislike/cJ$2;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/dislike/cJ$2;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/cJ;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/dislike/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/dislike/ac$Qhi;)V

    return-void
.end method

.method private ac()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->cJ:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    return-void

    .line 187
    :cond_0
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/dislike/Tgh;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/dislike/Tgh;->show()V

    :cond_1
    return-void
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/dislike/cJ;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->ac()V

    return-void
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/dislike/cJ;)Lcom/bytedance/sdk/openadsdk/dislike/ac;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->ac:Lcom/bytedance/sdk/openadsdk/dislike/ac;

    return-object p0
.end method


# virtual methods
.method public Qhi()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->cJ:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->ac:Lcom/bytedance/sdk/openadsdk/dislike/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/dislike/ac;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->ac:Lcom/bytedance/sdk/openadsdk/dislike/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/dislike/ac;->show()V

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/CQU$Qhi;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->fl:Lcom/bytedance/sdk/openadsdk/core/CQU$Qhi;

    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->ac:Lcom/bytedance/sdk/openadsdk/dislike/ac;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/ac;->Qhi(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Qhi(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;)V"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->ac:Lcom/bytedance/sdk/openadsdk/dislike/ac;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/dislike/ac;->Qhi(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public Qhi(Z)V
    .locals 0

    .line 177
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->CJ:Z

    return-void
.end method

.method public cJ()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->CJ:Z

    return v0
.end method
