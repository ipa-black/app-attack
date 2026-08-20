.class public Lcom/bytedance/sdk/component/adexpress/cJ/cJ;
.super Ljava/lang/Object;
.source "DynamicRenderInterceptor.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/cJ/Gm;


# instance fields
.field private CJ:Lcom/bytedance/sdk/component/adexpress/cJ/hm;

.field private Qhi:Landroid/content/Context;

.field private Tgh:I

.field private ac:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

.field private cJ:Lcom/bytedance/sdk/component/adexpress/dynamic/Qhi/Qhi;

.field private fl:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/cJ/iMK;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;ZLcom/bytedance/sdk/component/adexpress/dynamic/CJ/WAv;Lcom/bytedance/sdk/component/adexpress/cJ/hm;Lcom/bytedance/sdk/component/adexpress/dynamic/fl/Qhi;Lcom/bytedance/sdk/component/adexpress/dynamic/Qhi/Qhi;)V
    .locals 7

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->Qhi:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->fl:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    .line 41
    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->ac:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    .line 42
    iput-object p6, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->CJ:Lcom/bytedance/sdk/component/adexpress/cJ/hm;

    if-eqz p8, :cond_0

    .line 44
    iput-object p8, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->cJ:Lcom/bytedance/sdk/component/adexpress/dynamic/Qhi/Qhi;

    goto :goto_0

    .line 46
    :cond_0
    new-instance p1, Lcom/bytedance/sdk/component/adexpress/dynamic/Qhi/Qhi;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->Qhi:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->ac:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    iget-object v5, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->fl:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    move-object v0, p1

    move v3, p4

    move-object v4, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/component/adexpress/dynamic/Qhi/Qhi;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;ZLcom/bytedance/sdk/component/adexpress/dynamic/CJ/WAv;Lcom/bytedance/sdk/component/adexpress/cJ/iMK;Lcom/bytedance/sdk/component/adexpress/dynamic/fl/Qhi;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->cJ:Lcom/bytedance/sdk/component/adexpress/dynamic/Qhi/Qhi;

    .line 48
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->cJ:Lcom/bytedance/sdk/component/adexpress/dynamic/Qhi/Qhi;

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->CJ:Lcom/bytedance/sdk/component/adexpress/cJ/hm;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/hm;)V

    .line 49
    instance-of p1, p5, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/hm;

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    .line 50
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->Tgh:I

    return-void

    :cond_1
    const/4 p1, 0x2

    .line 52
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->Tgh:I

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/cJ;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->Tgh:I

    return p0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/component/adexpress/cJ/cJ;)Lcom/bytedance/sdk/component/adexpress/dynamic/Qhi/Qhi;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->cJ:Lcom/bytedance/sdk/component/adexpress/dynamic/Qhi/Qhi;

    return-object p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/component/adexpress/cJ/cJ;)Lcom/bytedance/sdk/component/adexpress/cJ/iMK;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->fl:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    return-object p0
.end method


# virtual methods
.method public Qhi()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->cJ:Lcom/bytedance/sdk/component/adexpress/dynamic/Qhi/Qhi;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/Qhi/Qhi;->cJ()V

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;)Z
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->fl:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->fl()Lcom/bytedance/sdk/component/adexpress/cJ/WAv;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->Tgh:I

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/adexpress/cJ/WAv;->Qhi(I)V

    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->cJ:Lcom/bytedance/sdk/component/adexpress/dynamic/Qhi/Qhi;

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/cJ/cJ$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/adexpress/cJ/cJ$1;-><init>(Lcom/bytedance/sdk/component/adexpress/cJ/cJ;Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/Sf;)V

    const/4 p1, 0x1

    return p1
.end method

.method public cJ()Lcom/bytedance/sdk/component/adexpress/dynamic/fl;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->cJ:Lcom/bytedance/sdk/component/adexpress/dynamic/Qhi/Qhi;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/Qhi/Qhi;->CJ()Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
