.class public Lcom/bytedance/sdk/component/adexpress/cJ/ROR;
.super Ljava/lang/Object;
.source "NativeRenderInterceptor.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/cJ/Gm;


# instance fields
.field private Qhi:Landroid/content/Context;

.field private ac:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

.field private cJ:Lcom/bytedance/sdk/component/adexpress/cJ/Qhi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/cJ/iMK;Lcom/bytedance/sdk/component/adexpress/cJ/Qhi;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/ROR;->Qhi:Landroid/content/Context;

    .line 18
    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/cJ/ROR;->cJ:Lcom/bytedance/sdk/component/adexpress/cJ/Qhi;

    .line 19
    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/cJ/ROR;->ac:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/ROR;)Lcom/bytedance/sdk/component/adexpress/cJ/Qhi;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/ROR;->cJ:Lcom/bytedance/sdk/component/adexpress/cJ/Qhi;

    return-object p0
.end method


# virtual methods
.method public Qhi()V
    .locals 0

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/ac;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/ROR;->cJ:Lcom/bytedance/sdk/component/adexpress/cJ/Qhi;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/adexpress/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/ac;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;)Z
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/ROR;->ac:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->fl()Lcom/bytedance/sdk/component/adexpress/cJ/WAv;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/WAv;->Tgh()V

    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/ROR;->cJ:Lcom/bytedance/sdk/component/adexpress/cJ/Qhi;

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/cJ/ROR$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/adexpress/cJ/ROR$1;-><init>(Lcom/bytedance/sdk/component/adexpress/cJ/ROR;Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/Sf;)V

    const/4 p1, 0x1

    return p1
.end method
